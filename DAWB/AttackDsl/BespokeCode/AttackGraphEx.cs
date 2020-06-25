
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Collections;
using System.Collections.Generic;

namespace JA.Attack
{
/*	// represents a single state/state link via an optional task
	public class Adjacency
	{
		// the name of the next state in the graph
		public string next { get; set; }

		// the task to be performed to get to the next state
		// null indicates a direct link with no task
		public Task task { get; set; }

		public Adjacency(string _next, Task _task)
		{
			next = _next;
			task = _task;
		}
	}

	
	// a full attack graph in easy-to-follow form
	public class GraphSyntax
	{
		// this is just a list of the FlowElements in the graph, for ease of access by name
		private Dictionary<string, FlowElement> _catalog;

		// a list of states with adjacencies, indexed by name
		private Dictionary<string, List<Adjacency>> _graph;

		// constructor, sets up the internal lists
		public GraphSyntax()
		{
			_graph = new Dictionary<string, List<Adjacency>>();
			_catalog = new Dictionary<string, FlowElement>();
		}

		// sets up a graph from an atach graph
		public void Initialise(AttackGraph ag)
		{
			// look at each flow element
			foreach ( FlowElement c in ag.Elements)
			{
				// a flow starts at a state.  Start and State are states
				if ( c is StartPoint || c is State )
				{
					_catalog.Add(c.Name, c);

					List<Adjacency> la = new List<Adjacency>();

					// look at all the flows starting at the element
					foreach (FlowRelationship flow in FlowRelationship.GetLinksToTargetFlowElements(c))
					{
						FlowElement nextE = flow.SourceFlowElement;
						if ( nextE is Task)
						{
							// the next element is a task, find out where it goes to
							var nextFlow = FlowRelationship.GetLinksToTargetFlowElements(nextE);
							if (nextFlow.Count != 1)
							{
								// should never happen - there should only be one flow out from a task
								throw new System.Exception("TaskFlows: Task must have exactly one out flow");
							}
							var nextState = nextFlow[0].SourceFlowElement;
							if ( !(nextState is State) && !(nextState is EndPoint)) {
								// next state must be a state or an end point
								throw new System.Exception("TaskFlows2: Flow from a task most go to a state or an end point");
							}

							la.Add(new Adjacency(nextState.Name, (Task) nextE));
						} else
						{
							la.Add(new Adjacency(nextE.Name, null));
						}
					}

					_graph.Add(c.Name, la);

				} else if ( c is EndPoint )
				{
					// an End has no adjacencies
					_catalog.Add(c.Name, c);
					_graph.Add(c.Name, null);
				}
			}
		}

		public void Activate() { }
	}
*/
	/// <summary>
	/// DomainClass AttackGraph
	/// </summary>
	[ValidationState(ValidationState.Enabled)]
	public partial class AttackGraph : NamedElement
	{
		// validate the model for correctness and consistency
		[ValidationMethod(ValidationCategories.Menu)]
		private void ValidateModel(ValidationContext context)
		{
			// remember the names so we can check for uniqueness
			var names = new Dictionary<string, NamedElement>();
			if (Name == null || Name.Length == 0)
			{
				context.LogError(string.Format("Object of type {0} does not have a name", GetType()),
						"NameBlank", this);
			}
			else if (names.ContainsKey(Name))
			{
				context.LogError(string.Format("Objects AttackGraph {0} share a name", Name),
					"NameNotUnique", this);
			}
			else
			{
				names.Add(Name, this);
			}

			// remember how many start elements there are
			int starts = 0;

			// now check each element
			foreach (FlowElement c in Elements)
			{
				// check the names - they must exist and be unique
				if (c.Name == null || c.Name.Length == 0)
				{
					context.LogError(string.Format("Object of type {0} does not have a name", c.GetType()),
							"NameBlank", c);
				}
				else if (names.ContainsKey(c.Name))
				{
					context.LogError(string.Format("Objects {0} FlowElement share a name", c.Name),
						"NameNotUnique", c);
				}
				else
				{
					names.Add(c.Name, c);
				}

				// count the start elements
				if (c is StartPoint) starts++;
				
				if (c is Task)
				{
					Task t = (Task)c;

					// check the conditions for existence and uniqueness
					foreach (Condition p in t.PreConditions)
					{
						if (p.Name == null || p.Name.Length == 0)
						{
							context.LogError(string.Format("Object of type {0} does not have a name", p.GetType()),
									"NameBlank", p);
						}
						/* else if (names.ContainsKey(p.Name))
						{
							context.LogError(string.Format("Objects {0} Task condition share a name", p.Name),
								"NameNotUnique", p);
						} 
						else
						{
							names.Add(p.Name, p);
						}*/
					}
				} else if (c is State) { 
					State s = (State)c;

					// check the conditions for existence and uniqueness
					foreach (Condition p in s.PostConditions)
					{
						if (p.Name == null || p.Name.Length == 0)
						{
							context.LogError(string.Format("Object of type {0} does not have a name", p.GetType()),
									"NameBlank", p);
						}
						/* else if (names.ContainsKey(p.Name))
						{
							context.LogError(string.Format("Objects {0} state condition share a name", p.Name),
								"NameNotUnique", p);
						} 
						else
						{
							names.Add(p.Name, p);
						}*/
					}
					// we don't yet support syncs or merges, so warn the user
				} else if (c is Synchronisation)
				{
					context.LogError("Synchronisation objects not yet supported", "SyncWarn", c);
				} else if (c is MergeBranch)
				{
					context.LogError("MergeBranch objects not yet supported", "MergeWarn", c);
				}

				// check each flow starts and ends on a sensible object type
				System.Collections.ObjectModel.ReadOnlyCollection<FlowRelationship> flows = FlowRelationship.GetLinksToSourceFlowElements(c);
				foreach (FlowRelationship flow in flows)
				{ 
					if ( flow.SourceFlowElement is EndPoint )
					{
						context.LogError("Flow cannot start on an End Point", "FlowEnd", flow);
					} else if (c is StartPoint )
					{
						context.LogError("Flow cannot end on a Start Point", "FlowStart", flow);
					} else if (c.GetType() == flow.SourceFlowElement.GetType() )
					{
						context.LogError("Cannot link 2 objects of the same type", "FlowSame", flow);
					}
				} 

				// a task must have one input and one output flow
				if ( c is Task)
				{
					if ( FlowRelationship.GetLinksToSourceFlowElements(c).Count != 1 
						|| FlowRelationship.GetLinksToTargetFlowElements(c).Count != 1)
					{
						context.LogError("A task must have exactly one incoming and one outgoing flow", "TaskFlows", c);
					}
				}
			}

			// check there's just 1 start
			if (starts != 1 )
			{
				context.LogError("There must be exactly one StartPoint in an Attack Graph", "Starts");
			}
		}

		// this activates the graph - it sees what conditions a threat agent picks up when it interacts with it
		public List<Condition> Activate(
								List<Condition> initCond /* the initial conditions the threat agent starts with */ 
								)
		{
			List<Condition> _conditions = new List<Condition>();
			_conditions.AddRange(initCond);



			return _conditions;
		}
	}

}

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Collections;
using System.Collections.Generic;

namespace JA.Attack
{
	// represents a single state/state link via an optional task
	public class Adjacency
	{
		public GraphElem next { get; set; }

		// null indicates a direct link with no task
		public Task task { get; set; }

		public Adjacency(GraphElem _next, Task _task)
		{
			next = _next;
			task = _task;
		}
	}

	// an element of a graph with successors
	public class GraphElem
	{
		private List<Adjacency> _nexts;
		private FlowElement _elem;

		public GraphElem(FlowElement f)
		{
			_nexts = new List<Adjacency>();
			_elem = f;
		}

		public void AddNext(GraphElem g, Task t)
		{
			_nexts.Add(new Adjacency(g, t));
		}
	}

	// a full attack graph in easy-to-follow form
	public class GraphSyntax
	{
	}

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
				context.LogError(string.Format("Objects {0} share a name", Name),
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
					context.LogError(string.Format("Objects {0} share a name", c.Name),
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
						else if (names.ContainsKey(p.Name))
						{
							context.LogError(string.Format("Objects {0} share a name", p.Name),
								"NameNotUnique", p);
						}
						else
						{
							names.Add(p.Name, p);
						}
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
						else if (names.ContainsKey(p.Name))
						{
							context.LogError(string.Format("Objects {0} share a name", p.Name),
								"NameNotUnique", p);
						}
						else
						{
							names.Add(p.Name, p);
						}
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
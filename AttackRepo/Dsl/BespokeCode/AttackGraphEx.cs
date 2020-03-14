
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Collections;
using System.Collections.Generic;

namespace JA.Attack
{
	/// <summary>
	/// DomainClass AttackGraph
	/// </summary>
	[ValidationState(ValidationState.Enabled)]
	public partial class AttackGraph : NamedElement
	{
		[ValidationMethod(ValidationCategories.Menu)]
		private void ValidateModel(ValidationContext context)
		{
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
			foreach (FlowElement c in Elements)
			{
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
				if (c is Task)
				{
					Task t = (Task)c;
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
				}
			}
		}
	}
}
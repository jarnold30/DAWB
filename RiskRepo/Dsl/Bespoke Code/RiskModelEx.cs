
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Collections;
using System.Collections.Generic;

namespace JA.Risk
{
	/// <summary>
	/// DomainClass RiskModel
	/// </summary>
	[ValidationState(ValidationState.Enabled)]
	public partial class RiskModel : NamedElement
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
			foreach ( Container c in Containers ) {
				if (c.Name == null || c.Name.Length == 0)
				{
					context.LogError(string.Format("Object of type {0} does not have a name", c.GetType()), 
							"NameBlank", c);
				} else if (names.ContainsKey(c.Name)) {
					context.LogError(string.Format("Objects {0} share a name", c.Name),
						"NameNotUnique", c);
				} else
				{
					names.Add(c.Name, c);
				}
				foreach (Port p in c.ContainerPorts)
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
			foreach (ThreatAgent c in ThreatAgents)
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
				foreach (Port p in c.AgentPorts)
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
				foreach (Condition k in c.Conditions)
				{
					if (k.Name == null || k.Name.Length == 0)
					{
						context.LogError(string.Format("Object of type {0} does not have a name", k.GetType()),
								"NameBlank", k);
					}
					else if (names.ContainsKey(k.Name))
					{
						context.LogError(string.Format("Objects {0} share a name", k.Name),
							"NameNotUnique", k);
					}
					else
					{
						names.Add(k.Name, k);
					}
				}

			}
			foreach (Asset c in Assets)
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
			}
		}
	}
}

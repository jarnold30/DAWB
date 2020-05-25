namespace JA.Risk
{
    using System;
    using System.CodeDom;
    using System.CodeDom.Compiler;
    using System.Collections.Generic;
    using System.Globalization;
    using System.IO;
    using System.Text;
    #region Using directives
    using DslModeling = global::Microsoft.VisualStudio.Modeling;
	using DslValidation = global::Microsoft.VisualStudio.Modeling.Validation;
	using VSTextTemplating = global::Microsoft.VisualStudio.TextTemplating;
	#endregion

	/// <summary>
	/// Double-derived template directive processor that provides Risk files
	/// The implementation is done in RiskDirectiveProcessorBase. This class
	/// exist so users can customize behavior easily.
	/// </summary>
	public sealed partial class RiskDirectiveProcessor : RiskDirectiveProcessorBase
	{
		protected override void InitializeRequiresDictionary(string directiveName, IDictionary<string, string> requiresDictionary)
		{
			// this codes expects FileName to be a parameter to TextTransform and copies it to InputFile
			// it overrides the default behaviour which is to take the FileName from the .tt transformation file
			base.InitializeRequiresDictionary(directiveName, requiresDictionary);
			requiresDictionary["FileName"] = base.Host.ResolveParameterValue("", "", "InputFile");
		}
	}
}
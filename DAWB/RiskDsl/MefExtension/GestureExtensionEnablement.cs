﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using ExtensionEnablement = global::Microsoft.VisualStudio.Modeling.Diagrams.ExtensionEnablement;
using JA.Risk.ExtensionEnablement;

namespace JA.Risk
{
	/// <summary>
	/// Partial implementation that instantiates an appropriate GestureExtensionController for this designer
	/// </summary>
	partial class RiskDiagram
	{
		/// <summary>
		/// Instantiates a GestureExtensionController for this designer.
		/// </summary>
		/// <returns>IGestureExtension implementation pertinent to this designer</returns>
		protected override ExtensionEnablement::IGestureExtensionController CreateGestureExtensionController()
		{
			return new RiskGestureExtensionController();
		}
	}
}


﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using ExtensionEnablement = global::Microsoft.VisualStudio.Modeling.Shell.ExtensionEnablement;

namespace JA.Risk.ExtensionEnablement
{ 
	/// <summary>
	/// ExtensionManager base class to register command extensions 
	/// </summary>	
	internal abstract class RiskCommandExtensionRegistrarBase : ExtensionEnablement::CommandExtensionRegistrar
	{
		private readonly global::System.Guid commandSetGuid = new global::System.Guid(Constants.RiskCommandSetId);		
	 
		/// <summary>
		/// Provides the CommandSet GUID where commands will be placed
		/// </summary>
		protected override global::System.Guid CommandSetGuid
		{
			get
			{
				return this.commandSetGuid;
			}
		}

		/// <summary>
		/// Provides the start Id of the dynamic Command Group in which the command extension will be placed.
		/// This value is used if a CommandExtension does not provide the MenuPlaceholderId value through MEF metadata.
		/// </summary>
		protected override int CommandExtensionDefaultStartId
		{
			get
			{
				return 0x4000;
			}
		}
		
		/// <summary>
		/// This registrar will filter out commands that don't provide an item of metadata with this value as a key.
		/// </summary>
		protected override global::System.String MetadataFilter
		{
			get
			{
				return global::JA.Risk.ExtensionEnablement.RiskExtensionFilter.MefMetadataFilter;
			}
		}

	}
	
	/// <summary>
	/// ExtensionManager to register command extensions.
	/// </summary>
	/// <remarks>
	/// Double-derived to allow customizations by Dsl Authors.
	/// </remarks>	
	internal partial class RiskCommandExtensionRegistrar : RiskCommandExtensionRegistrarBase
	{		
	}
}
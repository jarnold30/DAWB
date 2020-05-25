﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using System;
using System.Diagnostics;
using System.Drawing.Design;
using System.Windows.Forms;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace JA.Risk
{
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	/// <remarks>
	/// Double-derived class to allow easier code customization.
	/// </remarks>
	public partial class RiskToolboxHelper : RiskToolboxHelperBase 
	{
		/// <summary>
		/// Constructs a new RiskToolboxHelper.
		/// </summary>
		public RiskToolboxHelper(global::System.IServiceProvider serviceProvider)
			: base(serviceProvider) { }
	}
	
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1001:TypesThatOwnDisposableFieldsShouldBeDisposable", Justification = "The store is disposed on domain shut down")]
	public abstract class RiskToolboxHelperBase
	{
		/// <summary>
		/// Toolbox item filter string used to identify Risk toolbox items.  
		/// </summary>
		/// <remarks>
		/// See the MSDN documentation for the ToolboxItemFilterAttribute class for more information on toolbox
		/// item filters.
		/// </remarks>
		public const string ToolboxFilterString = "Risk.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify Generalization connector tool.
		/// </summary>
		public const string GeneralizationFilterString = "Generalization.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify Interaction connector tool.
		/// </summary>
		public const string InteractionFilterString = "Interaction.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify Contains connector tool.
		/// </summary>
		public const string ContainsFilterString = "Contains.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify ContainsAsset connector tool.
		/// </summary>
		public const string ContainsAssetFilterString = "ContainsAsset.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify LegitimateAccess connector tool.
		/// </summary>
		public const string LegitimateAccessFilterString = "LegitimateAccess.1.0";

	
		private global::System.Collections.Generic.Dictionary<string, DslDesign::ModelingToolboxItem> toolboxItemCache = new global::System.Collections.Generic.Dictionary<string, DslDesign::ModelingToolboxItem>();
		private DslModeling::Store toolboxStore;
		
		private global::System.IServiceProvider sp;
		
		/// <summary>
		/// Constructs a new RiskToolboxHelperBase.
		/// </summary>
		protected RiskToolboxHelperBase(global::System.IServiceProvider serviceProvider)
		{
			if(serviceProvider == null) throw new global::System.ArgumentNullException("serviceProvider");
			
			this.sp = serviceProvider;
		}
		
		/// <summary>
		/// Serivce provider used to access services from the hosting environment.
		/// </summary>
		protected global::System.IServiceProvider ServiceProvider
		{
			get
			{
				return this.sp;
			}
		}

		/// <summary>
		/// Returns the display name of the tab that should be opened by default when the editor is opened.
		/// </summary>
		public static string DefaultToolboxTabName
		{
			get
			{
				return global::JA.Risk.RiskDomainModel.SingletonResourceManager.GetString("RiskToolboxTab", global::System.Globalization.CultureInfo.CurrentUICulture);
			}
		}
		
		
		/// <summary>
		/// Returns the toolbox items count in the default tool box tab.
		/// </summary>
		public static int DefaultToolboxTabToolboxItemsCount
		{
			get
			{
				return 9;
			}
		}
		

		/// <summary>
		/// Returns a list of custom toolbox items to be added dynamically
		/// </summary>
		public virtual global::System.Collections.Generic.IList<DslDesign::ModelingToolboxItem> CreateToolboxItems()
		{
			global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem> toolboxItems = new global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem>();
			return toolboxItems;
		}
		
		/// <summary>
		/// Creates an ElementGroupPrototype for the element tool corresponding to the given domain class id.
		/// Default behavior is to create a prototype containing an instance of the domain class.
		/// Derived classes may override this to add additional information to the prototype.
		/// </summary>
		protected virtual DslModeling::ElementGroupPrototype CreateElementToolPrototype(DslModeling::Store store, global::System.Guid domainClassId)
		{
			DslModeling::ModelElement element = store.ElementFactory.CreateElement(domainClassId);
			DslModeling::ElementGroup elementGroup = new DslModeling::ElementGroup(store.DefaultPartition);
			elementGroup.AddGraph(element, true);
			return elementGroup.CreatePrototype();
		}

		/// <summary>
		/// Returns instance of ModelingToolboxItem based on specified name.
		/// This method must be called from within a Transaction. Failure to do so will result in an exception
		/// </summary>
		/// <param name="itemId">unique name of desired ToolboxItem</param>
		/// <param name="store">Store to perform the operation against</param>
		/// <returns>An instance of ModelingToolboxItem if the itemId can be resolved, null otherwise</returns>
		public virtual DslDesign::ModelingToolboxItem GetToolboxItem(string itemId, DslModeling::Store store)
		{
			DslDesign::ModelingToolboxItem result = null;
			if (string.IsNullOrEmpty(itemId))
			{
				return null;
			}
			if (store == null)
			{
				return null;
			}
			global::System.Resources.ResourceManager resourceManager = global::JA.Risk.RiskDomainModel.SingletonResourceManager;
			global::System.Globalization.CultureInfo resourceCulture = global::System.Globalization.CultureInfo.CurrentUICulture;
			switch(itemId)
			{
				case "JA.Risk.ContainerToolboxItem":
					// Add Container shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.ContainerToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						1, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ContainerToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ContainerToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"CreateContainerF1Keyword", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ContainerToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::JA.Risk.Container.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "JA.Risk.PortToolboxItem":
					// Add Port shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.PortToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						2, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("PortToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("PortToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Port", // F1 help keyword for the toolbox item.
						resourceManager.GetString("PortToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::JA.Risk.Port.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "JA.Risk.GeneralizationToolboxItem":

					// Add Generalization connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.GeneralizationToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						3, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("GeneralizationToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("GeneralizationToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"ConnectGeneralizationF1Keyword", // F1 help keyword for the toolbox item.
						resourceManager.GetString("GeneralizationToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(GeneralizationFilterString)
						});
					break;
				case "JA.Risk.InteractionToolboxItem":

					// Add Interaction connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.InteractionToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						4, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("InteractionToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("InteractionToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Interaction", // F1 help keyword for the toolbox item.
						resourceManager.GetString("InteractionToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(InteractionFilterString)
						});
					break;
				case "JA.Risk.ContainsToolboxItem":

					// Add Contains connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.ContainsToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						5, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ContainsToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ContainsToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Contains", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ContainsToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ContainsFilterString)
						});
					break;
				case "JA.Risk.AssetToolboxItem":
					// Add Asset shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.AssetToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						6, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("AssetToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("AssetToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Asset", // F1 help keyword for the toolbox item.
						resourceManager.GetString("AssetToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::JA.Risk.Asset.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "JA.Risk.ContainsAssetToolboxItem":

					// Add ContainsAsset connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.ContainsAssetToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						7, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ContainsAssetToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ContainsAssetToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"ContainsAsset", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ContainsAssetToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ContainsAssetFilterString)
						});
					break;
				case "JA.Risk.ThreatToolboxItem":
					// Add Threat shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.ThreatToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						8, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ThreatToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ThreatToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"Threat", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ThreatToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::JA.Risk.ThreatAgent.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "JA.Risk.LegitimateAccessToolboxItem":

					// Add LegitimateAccess connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"JA.Risk.LegitimateAccessToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						9, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("LegitimateAccessToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("LegitimateAccessToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"JA.Risk.RiskToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("RiskToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"LegitimateAccess", // F1 help keyword for the toolbox item.
						resourceManager.GetString("LegitimateAccessToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(LegitimateAccessFilterString)
						});
					break;
				default:
					break;
			} // end switch
			
			return result;
		}
		

		/// <summary>
		/// The store toe be used for all the toolbox item creation
		/// </summary>
		protected DslModeling::Store ToolboxStore
		{
			get
			{ 
				if (toolboxStore==null)
				{
					toolboxStore = new DslModeling::Store(this.ServiceProvider);
					EventHandler StoreCleanUp = (o, e) =>
					{
						//Since Store implements IDisposable, we need to dispose it when we're finished
						if (this.toolboxStore != null)
						{
							this.toolboxStore.Dispose();
						}
						this.toolboxStore = null;
					};
					//There is no DomainUnload event for the default AppDomain, so we listen for both ProcessExit and DomainUnload
					AppDomain.CurrentDomain.ProcessExit += new EventHandler(StoreCleanUp);
					AppDomain.CurrentDomain.DomainUnload += new EventHandler(StoreCleanUp);
					
					//load the domain model
					toolboxStore.LoadDomainModels(typeof(global::JA.Risk.RiskDomainModel));
					
				}
				return toolboxStore;
			}
		}
		
		/// <summary>
		/// Given a toolbox item "unique ID" returns the the toolbox item using cached dictionary
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve</param>
		private DslDesign::ModelingToolboxItem GetToolboxItem(string itemId)
		{
			DslDesign::ModelingToolboxItem item = null;

			if (!this.toolboxItemCache.TryGetValue(itemId, out item))
			{
				DslModeling::Store store = this.ToolboxStore;
				
				// Open transaction so we can create model elements corresponding to toolbox items.
				using (DslModeling::Transaction t = store.TransactionManager.BeginTransaction("CreateToolboxItems"))
				{
					// Retrieve the specified ToolboxItem from the DSL
					this.toolboxItemCache[itemId] = item = this.GetToolboxItem(itemId, store);
				}
			}

			return item;
		}
		
		/// <summary>
		/// Given a toolbox item "unique ID" and a data format identifier, returns the content of
		/// the data format. 
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve data for</param>
		/// <param name="format">The desired format of the resulting data</param>
		public virtual object GetToolboxItemData(string itemId, DataFormats.Format format)
		{
			DslDesign::ModelingToolboxItem item = null;

			global::System.Resources.ResourceManager resourceManager = global::JA.Risk.RiskDomainModel.SingletonResourceManager;
			global::System.Globalization.CultureInfo resourceCulture = global::System.Globalization.CultureInfo.CurrentUICulture;

			System.Windows.Forms.IDataObject tbxDataObj;

			//get the toolbox item
			item = GetToolboxItem(itemId);

			if (item != null)
			{
				ToolboxItemContainer container = new ToolboxItemContainer(item);
				tbxDataObj = container.ToolboxData;

				if (tbxDataObj.GetDataPresent(format.Name))
				{
					return tbxDataObj.GetData(format.Name);
				}
				else 
				{
					string invalidFormatString = resourceManager.GetString("UnsupportedToolboxFormat", resourceCulture);
					throw new InvalidOperationException(string.Format(resourceCulture, invalidFormatString, format.Name));
				}
			}

			string errorFormatString = resourceManager.GetString("UnresolvedToolboxItem", resourceCulture);
			throw new InvalidOperationException(string.Format(resourceCulture, errorFormatString, itemId));
		}		
	}
}
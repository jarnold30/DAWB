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
namespace JA.Risk
{
	/// <summary>
	/// DomainClass NamedElement
	/// </summary>
	[DslDesign::DisplayNameResource("JA.Risk.NamedElement.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("JA.Risk.NamedElement.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::JA.Risk.RiskDomainModel))]
	[global::System.CLSCompliant(true)]
	[global::System.Diagnostics.DebuggerDisplay("{GetType().Name,nq} (Name = {namePropertyStorage})")]
	[DslModeling::DomainObjectId("2f6974ea-1dc8-4ea9-945a-a63c86df2eab")]
	public abstract partial class NamedElement : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// NamedElement domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x2f6974ea, 0x1dc8, 0x4ea9, 0x94, 0x5a, 0xa6, 0x3c, 0x86, 0xdf, 0x2e, 0xab);
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		protected NamedElement(DslModeling::Partition partition, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Name domain property code
		
		/// <summary>
		/// Name domain property Id.
		/// </summary>
		public static readonly global::System.Guid NameDomainPropertyId = new global::System.Guid(0x371a2ffb, 0x0a87, 0x4ac9, 0x80, 0xd1, 0x36, 0x40, 0xec, 0x65, 0xc2, 0x48);
		
		/// <summary>
		/// Storage for Name
		/// </summary>
		private global::System.String namePropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Name domain property.
		/// </summary>
		[DslDesign::DisplayNameResource("JA.Risk.NamedElement/Name.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("JA.Risk.NamedElement/Name.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue("")]
		[DslModeling::ElementName]
		[DslModeling::DomainObjectId("371a2ffb-0a87-4ac9-80d1-3640ec65c248")]
		public global::System.String Name
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return namePropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				NamePropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the NamedElement.Name domain property.
		/// </summary>
		internal sealed partial class NamePropertyHandler : DslModeling::DomainPropertyValueHandler<NamedElement, global::System.String>
		{
			private NamePropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the NamedElement.Name domain property value handler.
			/// </summary>
			public static readonly NamePropertyHandler Instance = new NamePropertyHandler();
		
			/// <summary>
			/// Gets the Id of the NamedElement.Name domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return NameDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.String GetValue(NamedElement element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.namePropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(NamedElement element, global::System.String newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.String oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.namePropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
	}
}
namespace JA.Risk
{
	/// <summary>
	/// DomainClass RiskModel
	/// </summary>
	[DslDesign::DisplayNameResource("JA.Risk.RiskModel.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("JA.Risk.RiskModel.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::JA.Risk.RiskDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("cdf6b92a-2285-4333-b19a-bac91ff13cfa")]
	public partial class RiskModel : NamedElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// RiskModel domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xcdf6b92a, 0x2285, 0x4333, 0xb1, 0x9a, 0xba, 0xc9, 0x1f, 0xf1, 0x3c, 0xfa);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public RiskModel(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public RiskModel(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Containers opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Containers.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Container> Containers
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Container>, Container>(global::JA.Risk.RiskModelHasContainers.RiskModelDomainRoleId);
			}
		}
		#endregion
		#region ElementGroupPrototype Merge methods
		/// <summary>
		/// Returns a value indicating whether the source element represented by the
		/// specified root ProtoElement can be added to this element.
		/// </summary>
		/// <param name="rootElement">
		/// The root ProtoElement representing a source element.  This can be null, 
		/// in which case the ElementGroupPrototype does not contain an ProtoElements
		/// and the code should inspect the ElementGroupPrototype context information.
		/// </param>
		/// <param name="elementGroupPrototype">The ElementGroupPrototype that contains the root ProtoElement.</param>
		/// <returns>true if the source element represented by the ProtoElement can be added to this target element.</returns>
		protected override bool CanMerge(DslModeling::ProtoElementBase rootElement, DslModeling::ElementGroupPrototype elementGroupPrototype)
		{
			if ( elementGroupPrototype == null ) throw new global::System.ArgumentNullException("elementGroupPrototype");
			
			if (rootElement != null)
			{
				DslModeling::DomainClassInfo rootElementDomainInfo = this.Partition.DomainDataDirectory.GetDomainClass(rootElement.DomainClassId);
				
				if (rootElementDomainInfo.IsDerivedFrom(global::JA.Risk.Container.DomainClassId)) 
				{
					return true;
				}
			}
			return base.CanMerge(rootElement, elementGroupPrototype);
		}
		
		/// <summary>
		/// Called by the Merge process to create a relationship between 
		/// this target element and the specified source element. 
		/// Typically, a parent-child relationship is established
		/// between the target element (the parent) and the source element 
		/// (the child), but any relationship can be established.
		/// </summary>
		/// <param name="sourceElement">The element that is to be related to this model element.</param>
		/// <param name="elementGroup">The group of source ModelElements that have been rehydrated into the target store.</param>
		/// <remarks>
		/// This method is overriden to create the relationship between the target element and the specified source element.
		/// The base method does nothing.
		/// </remarks>
		protected override void MergeRelate(DslModeling::ModelElement sourceElement, DslModeling::ElementGroup elementGroup)
		{
			// In general, sourceElement is allowed to be null, meaning that the elementGroup must be parsed for special cases.
			// However this is not supported in generated code.  Use double-deriving on this class and then override MergeRelate completely if you 
			// need to support this case.
			if ( sourceElement == null ) throw new global::System.ArgumentNullException("sourceElement");
		
				
			global::JA.Risk.Container sourceContainer1 = sourceElement as global::JA.Risk.Container;
			if (sourceContainer1 != null)
			{
				// Create link for path RiskModelHasContainers.Containers
				this.Containers.Add(sourceContainer1);

				return;
			}
		
			// Sdk workaround to runtime bug #879350 (DSL: can't copy and paste a MEL that has a MEX). Avoid MergeRelate on ModelElementExtension
			// during a "Paste".
			if (sourceElement is DslModeling::ExtensionElement
				&& sourceElement.Store.TransactionManager.CurrentTransaction.TopLevelTransaction.Context.ContextInfo.ContainsKey("{9DAFD42A-DC0E-4d78-8C3F-8266B2CF8B33}"))
			{
				return;
			}
		
			// Fall through to base class if this class hasn't handled the merge.
			base.MergeRelate(sourceElement, elementGroup);
		}
		
		/// <summary>
		/// Performs operation opposite to MergeRelate - i.e. disconnects a given
		/// element from the current one (removes links created by MergeRelate).
		/// </summary>
		/// <param name="sourceElement">Element to be unmerged/disconnected.</param>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
		protected override void MergeDisconnect(DslModeling::ModelElement sourceElement)
		{
			if (sourceElement == null) throw new global::System.ArgumentNullException("sourceElement");
				
			global::JA.Risk.Container sourceContainer1 = sourceElement as global::JA.Risk.Container;
			if (sourceContainer1 != null)
			{
				// Delete link for path RiskModelHasContainers.Containers
				
				foreach (DslModeling::ElementLink link in global::JA.Risk.RiskModelHasContainers.GetLinks((global::JA.Risk.RiskModel)this, sourceContainer1))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::JA.Risk.RiskModelHasContainers.RiskModelDomainRoleId, global::JA.Risk.RiskModelHasContainers.ContainerDomainRoleId);
				}

				return;
			}
			// Fall through to base class if this class hasn't handled the unmerge.
			base.MergeDisconnect(sourceElement);
		}
		#endregion
	}
}
namespace JA.Risk
{
	/// <summary>
	/// DomainClass Container
	/// </summary>
	[DslDesign::DisplayNameResource("JA.Risk.Container.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("JA.Risk.Container.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::JA.Risk.RiskDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("05a5c5ec-ce41-469f-b478-e541d5aadb08")]
	public partial class Container : NamedElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// Container domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x05a5c5ec, 0xce41, 0x469f, 0xb4, 0x78, 0xe5, 0x41, 0xd5, 0xaa, 0xdb, 0x08);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public Container(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public Container(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Kind domain property code
		
		/// <summary>
		/// Kind domain property Id.
		/// </summary>
		public static readonly global::System.Guid KindDomainPropertyId = new global::System.Guid(0x15b63b41, 0xa524, 0x4d3a, 0xb7, 0x08, 0x76, 0x41, 0x4a, 0x8c, 0xf3, 0xec);
		
		/// <summary>
		/// Storage for Kind
		/// </summary>
		private global::System.String kindPropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Kind domain property.
		/// </summary>
		[DslDesign::DisplayNameResource("JA.Risk.Container/Kind.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("JA.Risk.Container/Kind.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue("")]
		[DslModeling::DomainObjectId("15b63b41-a524-4d3a-b708-76414a8cf3ec")]
		public global::System.String Kind
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return kindPropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				KindPropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the Container.Kind domain property.
		/// </summary>
		internal sealed partial class KindPropertyHandler : DslModeling::DomainPropertyValueHandler<Container, global::System.String>
		{
			private KindPropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the Container.Kind domain property value handler.
			/// </summary>
			public static readonly KindPropertyHandler Instance = new KindPropertyHandler();
		
			/// <summary>
			/// Gets the Id of the Container.Kind domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return KindDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.String GetValue(Container element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.kindPropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(Container element, global::System.String newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.String oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.kindPropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region Ports opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Ports.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Port> Ports
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Port>, Port>(global::JA.Risk.ContainerHasPorts.ContainerDomainRoleId);
			}
		}
		#endregion
		#region RiskModel opposite domain role accessor
		/// <summary>
		/// Gets or sets RiskModel.
		/// </summary>
		public virtual RiskModel RiskModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::JA.Risk.RiskModelHasContainers.ContainerDomainRoleId) as RiskModel;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::JA.Risk.RiskModelHasContainers.ContainerDomainRoleId, value);
			}
		}
		#endregion
		#region Subclasses opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Subclasses.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Container> Subclasses
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Container>, Container>(global::JA.Risk.Generalization.SuperclassDomainRoleId);
			}
		}
		#endregion
		#region Superclass opposite domain role accessor
		/// <summary>
		/// Gets or sets Superclass.
		/// </summary>
		public virtual Container Superclass
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::JA.Risk.Generalization.SubclassDomainRoleId) as Container;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::JA.Risk.Generalization.SubclassDomainRoleId, value);
			}
		}
		#endregion
		#region TargetContainers opposite domain role accessor
		
		/// <summary>
		/// Gets a list of TargetContainers.
		/// Description for JA.Risk.ContainerHasTargetContainers.SourceContainer
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Container> TargetContainers
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Container>, Container>(global::JA.Risk.ContainerHasTargetContainers.SourceContainerDomainRoleId);
			}
		}
		#endregion
		#region SourceContainer opposite domain role accessor
		/// <summary>
		/// Gets or sets SourceContainer.
		/// Description for JA.Risk.ContainerHasTargetContainers.TargetContainer
		/// </summary>
		public virtual Container SourceContainer
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::JA.Risk.ContainerHasTargetContainers.TargetContainerDomainRoleId) as Container;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::JA.Risk.ContainerHasTargetContainers.TargetContainerDomainRoleId, value);
			}
		}
		#endregion
		#region ElementGroupPrototype Merge methods
		/// <summary>
		/// Returns a value indicating whether the source element represented by the
		/// specified root ProtoElement can be added to this element.
		/// </summary>
		/// <param name="rootElement">
		/// The root ProtoElement representing a source element.  This can be null, 
		/// in which case the ElementGroupPrototype does not contain an ProtoElements
		/// and the code should inspect the ElementGroupPrototype context information.
		/// </param>
		/// <param name="elementGroupPrototype">The ElementGroupPrototype that contains the root ProtoElement.</param>
		/// <returns>true if the source element represented by the ProtoElement can be added to this target element.</returns>
		protected override bool CanMerge(DslModeling::ProtoElementBase rootElement, DslModeling::ElementGroupPrototype elementGroupPrototype)
		{
			if ( elementGroupPrototype == null ) throw new global::System.ArgumentNullException("elementGroupPrototype");
			
			if (rootElement != null)
			{
				DslModeling::DomainClassInfo rootElementDomainInfo = this.Partition.DomainDataDirectory.GetDomainClass(rootElement.DomainClassId);
				
				if (rootElementDomainInfo.IsDerivedFrom(global::JA.Risk.Port.DomainClassId)) 
				{
					return true;
				}
				
				if (rootElementDomainInfo.IsDerivedFrom(global::JA.Risk.Container.DomainClassId)) 
				{
					return true;
				}
			}
			return base.CanMerge(rootElement, elementGroupPrototype);
		}
		
		/// <summary>
		/// Called by the Merge process to create a relationship between 
		/// this target element and the specified source element. 
		/// Typically, a parent-child relationship is established
		/// between the target element (the parent) and the source element 
		/// (the child), but any relationship can be established.
		/// </summary>
		/// <param name="sourceElement">The element that is to be related to this model element.</param>
		/// <param name="elementGroup">The group of source ModelElements that have been rehydrated into the target store.</param>
		/// <remarks>
		/// This method is overriden to create the relationship between the target element and the specified source element.
		/// The base method does nothing.
		/// </remarks>
		protected override void MergeRelate(DslModeling::ModelElement sourceElement, DslModeling::ElementGroup elementGroup)
		{
			// In general, sourceElement is allowed to be null, meaning that the elementGroup must be parsed for special cases.
			// However this is not supported in generated code.  Use double-deriving on this class and then override MergeRelate completely if you 
			// need to support this case.
			if ( sourceElement == null ) throw new global::System.ArgumentNullException("sourceElement");
		
				
			global::JA.Risk.Port sourcePort1 = sourceElement as global::JA.Risk.Port;
			if (sourcePort1 != null)
			{
				// Create link for path ContainerHasPorts.Ports
				this.Ports.Add(sourcePort1);

				return;
			}
				
			global::JA.Risk.Container sourceContainer2 = sourceElement as global::JA.Risk.Container;
			if (sourceContainer2 != null)
			{
				// Create link for path ContainerHasTargetContainers.TargetContainers
				this.TargetContainers.Add(sourceContainer2);

				return;
			}
		
			// Sdk workaround to runtime bug #879350 (DSL: can't copy and paste a MEL that has a MEX). Avoid MergeRelate on ModelElementExtension
			// during a "Paste".
			if (sourceElement is DslModeling::ExtensionElement
				&& sourceElement.Store.TransactionManager.CurrentTransaction.TopLevelTransaction.Context.ContextInfo.ContainsKey("{9DAFD42A-DC0E-4d78-8C3F-8266B2CF8B33}"))
			{
				return;
			}
		
			// Fall through to base class if this class hasn't handled the merge.
			base.MergeRelate(sourceElement, elementGroup);
		}
		
		/// <summary>
		/// Performs operation opposite to MergeRelate - i.e. disconnects a given
		/// element from the current one (removes links created by MergeRelate).
		/// </summary>
		/// <param name="sourceElement">Element to be unmerged/disconnected.</param>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
		protected override void MergeDisconnect(DslModeling::ModelElement sourceElement)
		{
			if (sourceElement == null) throw new global::System.ArgumentNullException("sourceElement");
				
			global::JA.Risk.Port sourcePort1 = sourceElement as global::JA.Risk.Port;
			if (sourcePort1 != null)
			{
				// Delete link for path ContainerHasPorts.Ports
				
				foreach (DslModeling::ElementLink link in global::JA.Risk.ContainerHasPorts.GetLinks((global::JA.Risk.Container)this, sourcePort1))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::JA.Risk.ContainerHasPorts.ContainerDomainRoleId, global::JA.Risk.ContainerHasPorts.PortDomainRoleId);
				}

				return;
			}
				
			global::JA.Risk.Container sourceContainer2 = sourceElement as global::JA.Risk.Container;
			if (sourceContainer2 != null)
			{
				// Delete link for path ContainerHasTargetContainers.TargetContainers
				
				foreach (DslModeling::ElementLink link in global::JA.Risk.ContainerHasTargetContainers.GetLinks((global::JA.Risk.Container)this, sourceContainer2))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::JA.Risk.ContainerHasTargetContainers.SourceContainerDomainRoleId, global::JA.Risk.ContainerHasTargetContainers.TargetContainerDomainRoleId);
				}

				return;
			}
			// Fall through to base class if this class hasn't handled the unmerge.
			base.MergeDisconnect(sourceElement);
		}
		#endregion
	}
}
namespace JA.Risk
{
	/// <summary>
	/// DomainClass Port
	/// Description for JA.Risk.Port
	/// </summary>
	[DslDesign::DisplayNameResource("JA.Risk.Port.DisplayName", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("JA.Risk.Port.Description", typeof(global::JA.Risk.RiskDomainModel), "JA.Risk.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::JA.Risk.RiskDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("70a78dd6-9b1b-452e-bd17-314df32f61fa")]
	public abstract partial class Port : NamedElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// Port domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x70a78dd6, 0x9b1b, 0x452e, 0xbd, 0x17, 0x31, 0x4d, 0xf3, 0x2f, 0x61, 0xfa);
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		protected Port(DslModeling::Partition partition, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Container opposite domain role accessor
		/// <summary>
		/// Gets or sets Container.
		/// </summary>
		public virtual Container Container
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::JA.Risk.ContainerHasPorts.PortDomainRoleId) as Container;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::JA.Risk.ContainerHasPorts.PortDomainRoleId, value);
			}
		}
		#endregion
		#region TargetPorted opposite domain role accessor
		
		/// <summary>
		/// Gets a list of TargetPorted.
		/// Description for JA.Risk.PortReferencesTargetPorted.SourcePort
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Port> TargetPorted
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Port>, Port>(global::JA.Risk.PortReferencesTargetPorted.SourcePortDomainRoleId);
			}
		}
		#endregion
		#region SourcePorted opposite domain role accessor
		
		/// <summary>
		/// Gets a list of SourcePorted.
		/// Description for JA.Risk.PortReferencesTargetPorted.TargetPort
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<Port> SourcePorted
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<Port>, Port>(global::JA.Risk.PortReferencesTargetPorted.TargetPortDomainRoleId);
			}
		}
		#endregion
	}
}
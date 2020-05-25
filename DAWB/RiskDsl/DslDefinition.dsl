<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="dcaa76d0-34ef-466f-ab09-b6f3dadd948b" Description="Description for JA.Risk.Risk" Name="Risk" DisplayName="Risk" Namespace="JA.Risk" ProductName="Risk" CompanyName="JA" PackageGuid="c8c96252-ab8f-4284-84ea-defc13ac854b" PackageNamespace="JA.Risk" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="2f6974ea-1dc8-4ea9-945a-a63c86df2eab" Description="" Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <Properties>
        <DomainProperty Id="371a2ffb-0a87-4ac9-80d1-3640ec65c248" Description="The name of the element" Name="Name" DisplayName="Name" DefaultValue="" Category="Details" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="78080aa1-dda9-4129-99a0-5febe9b4a462" Description="Description for JA.Risk.NamedElement.Notes" Name="Notes" DisplayName="Notes" Category="Details">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="cdf6b92a-2285-4333-b19a-bac91ff13cfa" Description="" Name="RiskModel" DisplayName="Risk Model" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Container" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>RiskModelHasContainers.Containers</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Asset" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>RiskModelHasAssets.Assets</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ThreatAgent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>RiskModelHasThreatAgents.ThreatAgents</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="05a5c5ec-ce41-469f-b478-e541d5aadb08" Description="Represents part of a system being studied: a building, computer, network etc" Name="Container" DisplayName="Container" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="ObjectWithPorts" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="8721f980-ccc6-4115-a1be-4e85ae475501" Description="The type of the container" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="70a78dd6-9b1b-452e-bd17-314df32f61fa" Description="Description for JA.Risk.Port" Name="Port" DisplayName="Port" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="7e7ffb3b-fc14-46ee-a021-eb9022be9768" Description="Represents something of value" Name="Asset" DisplayName="Asset" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="ObjectWithConditions" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="a27ca295-7dc9-4f31-bffa-d0eace58d5bd" Description="The number of instances of this asset" Name="Number" DisplayName="Number">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5ea7bd42-55d8-4e64-9e6b-b7b67b05932d" Description="The impact of disclosure of this asset" Name="SingleConfidentialityValue" DisplayName="Single Confidentiality Value" Category="Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dd904d38-ee8b-4e65-a61e-81e134000f67" Description="The impact of tampering with this asset" Name="SingleIntegrityValue" DisplayName="Single Integrity Value" Category="Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e066c9b1-8833-4137-9d4f-9836857a44a2" Description="The impact of loss of this asset" Name="SingleAvailabilityValue" DisplayName="Single Availability Value" Category="Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="c887e7ce-864d-4c36-a285-170f665ced7b" Description="Represents something active, a user, attacker or external event" Name="ThreatAgent" DisplayName="Threat Agent" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="ObjectWithPorts" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="4dd9846f-a569-4e4a-b696-f9dfd8c74b1a" Description="The number of instances of this threat" Name="Number" DisplayName="Number">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="2f960aff-ba36-48d5-8b9e-7cd173502a86" Description="This represents a condition a threat agent has before connecting to a system." Name="Condition" DisplayName="Condition" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="17d58e3b-39ed-425b-94e9-764f3aa76897" Description="Description for JA.Risk.ObjectWithConditions" Name="ObjectWithConditions" DisplayName="Object With Conditions" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Condition" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ObjectWithConditionsHasConditions.Conditions</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="e0fa9b66-207b-4be2-a424-d26097841440" Description="Description for JA.Risk.ObjectWithPorts" Name="ObjectWithPorts" DisplayName="Object With Ports" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="ObjectWithConditions" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="cd227b9c-ef08-487c-82c9-3d8146582054" Description="This describes the internal functions provided by the container or threat agent, i.e. how access on one port converts to access on another one." Name="InternalFunctions" DisplayName="Internal Functions">
          <Notes>This describes the internal functions provided by the container or threat agent, i.e. how access on one port converts to access on another one.</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Port" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ObjectHasPorts.Ports</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="38aa0a41-4dc9-4a81-ab8b-1f71302601ac" Description="" Name="RiskModelHasContainers" DisplayName="ComponentModelHasComponents" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="f35d74fc-e9a3-4cc2-b344-cf08b7cd5a33" Description="" Name="RiskModel" DisplayName="Risk Model" PropertyName="Containers" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Containers">
          <RolePlayer>
            <DomainClassMoniker Name="RiskModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="69d32f76-bd09-493d-b64a-6d54451607aa" Description="" Name="Container" DisplayName="Container" PropertyName="RiskModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Risk Model">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d3f5f36b-85f6-467b-9d59-c9a432c5d0ef" Description="" Name="Generalization" DisplayName="Generalization" Namespace="JA.Risk">
      <Source>
        <DomainRole Id="ae3526b0-20d6-46dd-9b36-38960a68aee4" Description="" Name="Superclass" DisplayName="Superclass" PropertyName="Subclasses" PropertyDisplayName="Subclasses">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e1d115ba-809a-46ab-a0f9-52792a1286c0" Description="" Name="Subclass" DisplayName="Subclass" PropertyName="Superclass" Multiplicity="ZeroOne" PropertyDisplayName="Superclass">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ddc2e9e0-da0d-41da-b6f1-709345d0737c" Description="Description for JA.Risk.Interaction" Name="Interaction" DisplayName="Interaction" Namespace="JA.Risk" AllowsDuplicates="true">
      <Properties>
        <DomainProperty Id="b92f1c8b-af20-4535-8f1b-c6fa08eb4b57" Description="Description for JA.Risk.Interaction.Attack" Name="Attack" DisplayName="Attack">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="8ada8518-418f-45ad-9f27-e69320483e47" Description="Description for JA.Risk.Interaction.SourcePort" Name="SourcePort" DisplayName="Source Port" PropertyName="TargetPort" PropertyDisplayName="Target Port">
          <RolePlayer>
            <DomainClassMoniker Name="Port" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="279cfe6d-0a18-4abf-afb9-041ca33545a3" Description="Description for JA.Risk.Interaction.TargetPort" Name="TargetPort" DisplayName="Target Port" PropertyName="SourcePort" PropertyDisplayName="Source Port">
          <RolePlayer>
            <DomainClassMoniker Name="Port" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="48911222-c25b-409b-b5be-86345561a3f1" Description="Description for JA.Risk.Contains" Name="Contains" DisplayName="Contains" Namespace="JA.Risk">
      <Properties>
        <DomainProperty Id="fd9bfec8-ebcd-4cf0-8b64-5e054eb4b237" Description="Description for JA.Risk.Contains.Number" Name="Number" DisplayName="Number">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8a0f87d1-5bde-47c3-a814-245478cfad87" Description="Description for JA.Risk.Contains.Attack" Name="Attack" DisplayName="Attack">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="08ee4421-b90f-44e3-ac07-40df44d49993" Description="Description for JA.Risk.Contains.SourceContainer" Name="SourceContainer" DisplayName="Source Container" PropertyName="TargetContainers" PropertyDisplayName="Target Containers">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="be2a2a49-e692-4b51-bc50-2117579bd53a" Description="Description for JA.Risk.Contains.TargetContainer" Name="TargetContainer" DisplayName="Target Container" PropertyName="SourceContainers" PropertyDisplayName="Source Containers">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e2017b0f-12ee-44eb-967d-3489b095eae3" Description="Description for JA.Risk.ContainerReferencesAssets" Name="ContainerReferencesAssets" DisplayName="Container References Assets" Namespace="JA.Risk">
      <Source>
        <DomainRole Id="5b33c8c9-b0c8-40ae-b877-5992c03999d1" Description="Description for JA.Risk.ContainerReferencesAssets.Container" Name="Container" DisplayName="Container" PropertyName="Assets" PropertyDisplayName="Assets">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cc9aaefb-0a2e-429e-aef4-8bb9adbf0a86" Description="Description for JA.Risk.ContainerReferencesAssets.Asset" Name="Asset" DisplayName="Asset" PropertyName="Containers" PropertyDisplayName="Containers">
          <RolePlayer>
            <DomainClassMoniker Name="Asset" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0d29d0ac-33df-4654-b0be-5a0f43a34f01" Description="Description for JA.Risk.RiskModelHasAssets" Name="RiskModelHasAssets" DisplayName="Risk Model Has Assets" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="83159399-665d-4316-aedb-87502b0a194f" Description="Description for JA.Risk.RiskModelHasAssets.RiskModel" Name="RiskModel" DisplayName="Risk Model" PropertyName="Assets" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Assets">
          <RolePlayer>
            <DomainClassMoniker Name="RiskModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="436cea02-82ee-4db0-921d-21e74df0c160" Description="Description for JA.Risk.RiskModelHasAssets.Asset" Name="Asset" DisplayName="Asset" PropertyName="RiskModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Risk Model">
          <RolePlayer>
            <DomainClassMoniker Name="Asset" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="83f718e4-be81-4fa9-af1a-681f8ae5a035" Description="Description for JA.Risk.RiskModelHasThreatAgents" Name="RiskModelHasThreatAgents" DisplayName="Risk Model Has Threat Agents" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="7ba599b0-8402-4c91-891e-5bfe59f08123" Description="Description for JA.Risk.RiskModelHasThreatAgents.RiskModel" Name="RiskModel" DisplayName="Risk Model" PropertyName="ThreatAgents" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Threat Agents">
          <RolePlayer>
            <DomainClassMoniker Name="RiskModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c91778f2-aa94-4c5c-af7f-10e437d5cb8e" Description="Description for JA.Risk.RiskModelHasThreatAgents.ThreatAgent" Name="ThreatAgent" DisplayName="Threat Agent" PropertyName="RiskModel" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Risk Model">
          <RolePlayer>
            <DomainClassMoniker Name="ThreatAgent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e0e13669-9581-486b-96d0-1128b63d1816" Description="Description for JA.Risk.ObjectWithConditionsHasConditions" Name="ObjectWithConditionsHasConditions" DisplayName="Object With Conditions Has Conditions" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="c1f7da96-5e17-495b-85a4-648f843f8fd6" Description="Description for JA.Risk.ObjectWithConditionsHasConditions.ObjectWithConditions" Name="ObjectWithConditions" DisplayName="Object With Conditions" PropertyName="Conditions" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Conditions">
          <RolePlayer>
            <DomainClassMoniker Name="ObjectWithConditions" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="68bcc33f-df0e-4bfd-9ff6-5cf36af7cc55" Description="Description for JA.Risk.ObjectWithConditionsHasConditions.Condition" Name="Condition" DisplayName="Condition" PropertyName="ObjectWithConditions" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Object With Conditions">
          <RolePlayer>
            <DomainClassMoniker Name="Condition" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9587eb6a-097f-4a44-8c8e-1e3679ae73c7" Description="Description for JA.Risk.ObjectHasPorts" Name="ObjectHasPorts" DisplayName="Object Has Ports" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="839f0806-1251-4a2f-acf7-14434b2767eb" Description="Description for JA.Risk.ObjectHasPorts.ObjectWithPorts" Name="ObjectWithPorts" DisplayName="Object With Ports" PropertyName="Ports" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Ports">
          <RolePlayer>
            <DomainClassMoniker Name="ObjectWithPorts" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6b2d09b4-469d-4103-a173-c61c8948a0b9" Description="Description for JA.Risk.ObjectHasPorts.Port" Name="Port" DisplayName="Port" PropertyName="ObjectWithPorts" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Object With Ports">
          <RolePlayer>
            <DomainClassMoniker Name="Port" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0390b473-a13d-48c0-a29c-e28c6e325e0a" Description="Description for JA.Risk.LegitimateAccess" Name="LegitimateAccess" DisplayName="Legitimate Access" Namespace="JA.Risk">
      <Properties>
        <DomainProperty Id="1ef66e36-51e4-4f33-abd4-b4c1f6e921ae" Description="The conditions on an asset that a threat agent may legitimately access, separated by commas" Name="Conditions" DisplayName="Conditions">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="0f93b3e0-d4c8-4327-9295-b6948fff9320" Description="Description for JA.Risk.LegitimateAccess.ThreatAgent" Name="ThreatAgent" DisplayName="Threat Agent" PropertyName="Assets" PropertyDisplayName="Assets">
          <RolePlayer>
            <DomainClassMoniker Name="ThreatAgent" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="70f92599-8f6d-4820-9217-e3eb960265f7" Description="Description for JA.Risk.LegitimateAccess.Asset" Name="Asset" DisplayName="Asset" PropertyName="ThreatAgents" PropertyDisplayName="Threat Agents">
          <RolePlayer>
            <DomainClassMoniker Name="Asset" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <Port Id="8b3a0f5b-7ee4-428f-b77b-ca4c88337933" Description="Description for JA.Risk.PortShape" Name="PortShape" DisplayName="Port Shape" Namespace="JA.Risk" FixedTooltipText="Port Shape" InitialWidth="0.2" InitialHeight="0.2" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0" isMoveable="true">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </Port>
    <CompartmentShape Id="de45f752-a49e-4e9a-bf6d-2de5ffe41e7a" Description="Description for JA.Risk.ThreatAgentCompartmentShape" Name="ThreatAgentCompartmentShape" DisplayName="Threat Agent Compartment Shape" Namespace="JA.Risk" FixedTooltipText="Threat Agent Compartment Shape" FillColor="LightCoral" InitialHeight="1" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0.2">
        <TextDecorator Name="Number" DisplayName="Number" DefaultText="Number" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" FontStyle="Bold" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="ThreatIcon" DisplayName="Threat Icon" DefaultIcon="Resources\Agent.bmp" />
      </ShapeHasDecorators>
      <Compartment FillColor="IndianRed" TitleFillColor="LightCoral" Name="Conditions" />
    </CompartmentShape>
    <CompartmentShape Id="d7b9547a-0986-42fd-b433-d385fc91f6b6" Description="Description for JA.Risk.ContainerCompartmentShape" Name="ContainerCompartmentShape" DisplayName="Container Compartment Shape" Namespace="JA.Risk" FixedTooltipText="Container Compartment Shape" FillColor="Moccasin" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Type" DisplayName="Type" DefaultText="Type" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="ContainerIcon" DisplayName="Container Icon" DefaultIcon="Resources\Container.bmp" />
      </ShapeHasDecorators>
      <Compartment Name="Conditions" />
    </CompartmentShape>
    <CompartmentShape Id="88af3876-19b3-4b7d-8157-a393a49b9223" Description="Description for JA.Risk.AssetCompartmentShape" Name="AssetCompartmentShape" DisplayName="Asset Compartment Shape" Namespace="JA.Risk" FixedTooltipText="Asset Compartment Shape" FillColor="SandyBrown" InitialHeight="1" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Number" DisplayName="Number" DefaultText="Number" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="AssetIcon" DisplayName="Asset Icon" DefaultIcon="Resources\Assets.bmp" />
      </ShapeHasDecorators>
      <Compartment Name="Conditions" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="df711bf1-2083-4550-a040-755ee2d314ab" Description="" Name="InteractsLink" DisplayName="Interacts Link" Namespace="JA.Risk" FixedTooltipText="Interacts Link" TextColor="192, 0, 0" Color="192, 0, 0" TargetEndStyle="EmptyArrow" Thickness="0.01">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="Attack" DisplayName="Attack" DefaultText="Attack" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="4d24e955-8568-4b61-bbcb-3292a9f7f276" Description="" Name="GeneralizationLink" DisplayName="Generalization Link" Namespace="JA.Risk" FixedTooltipText="Generalization Link" Color="113, 111, 110" SourceEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="b24d3f7b-f24f-488a-92ff-ebe349688eb5" Description="Description for JA.Risk.ContainsLink" Name="ContainsLink" DisplayName="Contains Link" Namespace="JA.Risk" FixedTooltipText="Contains Link" TextColor="192, 0, 0" Color="192, 0, 0" SourceEndStyle="FilledDiamond" TargetEndStyle="EmptyArrow" targetEndWidth="0.2">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="Number" DisplayName="Number" DefaultText="Number" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="Attack" DisplayName="Attack" DefaultText="Attack" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="b26f6584-d13d-4a74-bc7d-af4b11d83100" Description="Description for JA.Risk.ContainsAsset" Name="ContainsAsset" DisplayName="Contains Asset" Namespace="JA.Risk" FixedTooltipText="Contains Asset" />
    <Connector Id="90a4d4ab-fdda-4dcf-850a-479a7fbfbd84" Description="Shows the assets a threat agent may legitimately access" Name="LegitimateAccessConnector" DisplayName="Legitimate Access Connector" Namespace="JA.Risk" FixedTooltipText="Legitimate Access Connector" Color="DarkGreen" TargetEndStyle="FilledArrow">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="Conditions" DisplayName="Conditions" DefaultText="Conditions" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="ComponentsSerializationBehavior" Namespace="JA.Risk">
    <ClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="NamedElement/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="notes">
            <DomainPropertyMoniker Name="NamedElement/Notes" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="RiskModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskModelMoniker" ElementName="riskModel" MonikerTypeName="RiskModelMoniker">
        <DomainClassMoniker Name="RiskModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="containers">
            <DomainRelationshipMoniker Name="RiskModelHasContainers" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="assets">
            <DomainRelationshipMoniker Name="RiskModelHasAssets" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="threatAgents">
            <DomainRelationshipMoniker Name="RiskModelHasThreatAgents" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Container" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerMoniker" ElementName="container" MonikerTypeName="ContainerMoniker">
        <DomainClassMoniker Name="Container" />
        <ElementData>
          <XmlRelationshipData RoleElementName="subclasses">
            <DomainRelationshipMoniker Name="Generalization" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetContainers">
            <DomainRelationshipMoniker Name="Contains" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="Container/Type" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="assets">
            <DomainRelationshipMoniker Name="ContainerReferencesAssets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Port" MonikerAttributeName="" SerializeId="true" MonikerElementName="portMoniker" ElementName="port" MonikerTypeName="PortMoniker">
        <DomainClassMoniker Name="Port" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetPort">
            <DomainRelationshipMoniker Name="Interaction" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="RiskModelHasContainers" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskModelHasContainersMoniker" ElementName="riskModelHasContainers" MonikerTypeName="RiskModelHasContainersMoniker">
        <DomainRelationshipMoniker Name="RiskModelHasContainers" />
      </XmlClassData>
      <XmlClassData TypeName="Generalization" MonikerAttributeName="" SerializeId="true" MonikerElementName="generalizationMoniker" ElementName="generalization" MonikerTypeName="GeneralizationMoniker">
        <DomainRelationshipMoniker Name="Generalization" />
      </XmlClassData>
      <XmlClassData TypeName="InteractsLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="interactsLinkMoniker" ElementName="interactsLink" MonikerTypeName="InteractsLinkMoniker">
        <ConnectorMoniker Name="InteractsLink" />
      </XmlClassData>
      <XmlClassData TypeName="GeneralizationLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="generalizationLinkMoniker" ElementName="generalizationLink" MonikerTypeName="GeneralizationLinkMoniker">
        <ConnectorMoniker Name="GeneralizationLink" />
      </XmlClassData>
      <XmlClassData TypeName="RiskDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskDiagramMoniker" ElementName="riskDiagram" MonikerTypeName="RiskDiagramMoniker">
        <DiagramMoniker Name="RiskDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Interaction" MonikerAttributeName="" SerializeId="true" MonikerElementName="interactionMoniker" ElementName="interaction" MonikerTypeName="InteractionMoniker">
        <DomainRelationshipMoniker Name="Interaction" />
        <ElementData>
          <XmlPropertyData XmlName="attack">
            <DomainPropertyMoniker Name="Interaction/Attack" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Asset" MonikerAttributeName="" SerializeId="true" MonikerElementName="assetMoniker" ElementName="asset" MonikerTypeName="AssetMoniker">
        <DomainClassMoniker Name="Asset" />
        <ElementData>
          <XmlPropertyData XmlName="number">
            <DomainPropertyMoniker Name="Asset/Number" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="singleConfidentialityValue">
            <DomainPropertyMoniker Name="Asset/SingleConfidentialityValue" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="singleIntegrityValue">
            <DomainPropertyMoniker Name="Asset/SingleIntegrityValue" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="singleAvailabilityValue">
            <DomainPropertyMoniker Name="Asset/SingleAvailabilityValue" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ThreatAgent" MonikerAttributeName="" SerializeId="true" MonikerElementName="threatAgentMoniker" ElementName="threatAgent" MonikerTypeName="ThreatAgentMoniker">
        <DomainClassMoniker Name="ThreatAgent" />
        <ElementData>
          <XmlPropertyData XmlName="number">
            <DomainPropertyMoniker Name="ThreatAgent/Number" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="assets">
            <DomainRelationshipMoniker Name="LegitimateAccess" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Contains" MonikerAttributeName="" SerializeId="true" MonikerElementName="containsMoniker" ElementName="contains" MonikerTypeName="ContainsMoniker">
        <DomainRelationshipMoniker Name="Contains" />
        <ElementData>
          <XmlPropertyData XmlName="number">
            <DomainPropertyMoniker Name="Contains/Number" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="attack">
            <DomainPropertyMoniker Name="Contains/Attack" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ContainsLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="containsLinkMoniker" ElementName="containsLink" MonikerTypeName="ContainsLinkMoniker">
        <ConnectorMoniker Name="ContainsLink" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerReferencesAssets" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerReferencesAssetsMoniker" ElementName="containerReferencesAssets" MonikerTypeName="ContainerReferencesAssetsMoniker">
        <DomainRelationshipMoniker Name="ContainerReferencesAssets" />
      </XmlClassData>
      <XmlClassData TypeName="ContainsAsset" MonikerAttributeName="" SerializeId="true" MonikerElementName="containsAssetMoniker" ElementName="containsAsset" MonikerTypeName="ContainsAssetMoniker">
        <ConnectorMoniker Name="ContainsAsset" />
      </XmlClassData>
      <XmlClassData TypeName="RiskModelHasAssets" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskModelHasAssetsMoniker" ElementName="riskModelHasAssets" MonikerTypeName="RiskModelHasAssetsMoniker">
        <DomainRelationshipMoniker Name="RiskModelHasAssets" />
      </XmlClassData>
      <XmlClassData TypeName="RiskModelHasThreatAgents" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskModelHasThreatAgentsMoniker" ElementName="riskModelHasThreatAgents" MonikerTypeName="RiskModelHasThreatAgentsMoniker">
        <DomainRelationshipMoniker Name="RiskModelHasThreatAgents" />
      </XmlClassData>
      <XmlClassData TypeName="PortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="portShapeMoniker" ElementName="portShape" MonikerTypeName="PortShapeMoniker">
        <PortMoniker Name="PortShape" />
      </XmlClassData>
      <XmlClassData TypeName="Condition" MonikerAttributeName="" SerializeId="true" MonikerElementName="conditionMoniker" ElementName="condition" MonikerTypeName="ConditionMoniker">
        <DomainClassMoniker Name="Condition" />
      </XmlClassData>
      <XmlClassData TypeName="ThreatAgentCompartmentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="threatAgentCompartmentShapeMoniker" ElementName="threatAgentCompartmentShape" MonikerTypeName="ThreatAgentCompartmentShapeMoniker">
        <CompartmentShapeMoniker Name="ThreatAgentCompartmentShape" />
      </XmlClassData>
      <XmlClassData TypeName="ObjectWithConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="objectWithConditionsMoniker" ElementName="objectWithConditions" MonikerTypeName="ObjectWithConditionsMoniker">
        <DomainClassMoniker Name="ObjectWithConditions" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="conditions">
            <DomainRelationshipMoniker Name="ObjectWithConditionsHasConditions" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ObjectWithConditionsHasConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="objectWithConditionsHasConditionsMoniker" ElementName="objectWithConditionsHasConditions" MonikerTypeName="ObjectWithConditionsHasConditionsMoniker">
        <DomainRelationshipMoniker Name="ObjectWithConditionsHasConditions" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerCompartmentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerCompartmentShapeMoniker" ElementName="containerCompartmentShape" MonikerTypeName="ContainerCompartmentShapeMoniker">
        <CompartmentShapeMoniker Name="ContainerCompartmentShape" />
      </XmlClassData>
      <XmlClassData TypeName="AssetCompartmentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="assetCompartmentShapeMoniker" ElementName="assetCompartmentShape" MonikerTypeName="AssetCompartmentShapeMoniker">
        <CompartmentShapeMoniker Name="AssetCompartmentShape" />
      </XmlClassData>
      <XmlClassData TypeName="ObjectWithPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="objectWithPortsMoniker" ElementName="objectWithPorts" MonikerTypeName="ObjectWithPortsMoniker">
        <DomainClassMoniker Name="ObjectWithPorts" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="ports">
            <DomainRelationshipMoniker Name="ObjectHasPorts" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="internalFunctions">
            <DomainPropertyMoniker Name="ObjectWithPorts/InternalFunctions" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ObjectHasPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="objectHasPortsMoniker" ElementName="objectHasPorts" MonikerTypeName="ObjectHasPortsMoniker">
        <DomainRelationshipMoniker Name="ObjectHasPorts" />
      </XmlClassData>
      <XmlClassData TypeName="LegitimateAccess" MonikerAttributeName="" SerializeId="true" MonikerElementName="legitimateAccessMoniker" ElementName="legitimateAccess" MonikerTypeName="LegitimateAccessMoniker">
        <DomainRelationshipMoniker Name="LegitimateAccess" />
        <ElementData>
          <XmlPropertyData XmlName="conditions">
            <DomainPropertyMoniker Name="LegitimateAccess/Conditions" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="LegitimateAccessConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="legitimateAccessConnectorMoniker" ElementName="legitimateAccessConnector" MonikerTypeName="LegitimateAccessConnectorMoniker">
        <ConnectorMoniker Name="LegitimateAccessConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="ContainerExplorer">
    <CustomNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Assets.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="Asset" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Container.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="Container" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Agent.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="ThreatAgent" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Port.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="Port" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Contains.bmp" ShowsDomainClass="true">
        <Class>
          <DomainRelationshipMoniker Name="Contains" />
        </Class>
      </ExplorerNodeSettings>
    </CustomNodeSettings>
  </ExplorerBehavior>
  <ConnectionBuilders>
    <ConnectionBuilder Name="GeneralizationBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Generalization" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Container" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Container" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="InteractionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Interaction" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Port" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Port" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Contains" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Container" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Container" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ContainerReferencesAssetsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ContainerReferencesAssets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Container" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Asset" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="LegitimateAccessBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="LegitimateAccess" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ThreatAgent" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Asset" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="84dfe933-9d52-41cd-982f-ca14293a514d" Description="" Name="RiskDiagram" DisplayName="Risk Diagram" Namespace="JA.Risk">
    <Class>
      <DomainClassMoniker Name="RiskModel" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="ThreatAgent" />
        <ParentElementPath>
          <DomainPath>RiskModelHasThreatAgents.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ThreatAgentCompartmentShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ThreatAgentCompartmentShape/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ThreatAgent/Number" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ThreatAgentCompartmentShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ThreatAgentCompartmentShape/Conditions" />
          <ElementsDisplayed>
            <DomainPath>ObjectWithConditionsHasConditions.Conditions/!Condition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Asset" />
        <ParentElementPath>
          <DomainPath>RiskModelHasAssets.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetCompartmentShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetCompartmentShape/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Asset/Number" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="AssetCompartmentShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="AssetCompartmentShape/Conditions" />
          <ElementsDisplayed>
            <DomainPath>ObjectWithConditionsHasConditions.Conditions/!Condition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Container" />
        <ParentElementPath>
          <DomainPath>RiskModelHasContainers.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerCompartmentShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerCompartmentShape/Type" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Type" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ContainerCompartmentShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ContainerCompartmentShape/Conditions" />
          <ElementsDisplayed>
            <DomainPath>ObjectWithConditionsHasConditions.Conditions/!Condition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Port" />
        <ParentElementPath>
          <DomainPath>ObjectHasPorts.ObjectWithPorts/!ObjectWithPorts</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PortShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <PortMoniker Name="PortShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="GeneralizationLink" />
        <DomainRelationshipMoniker Name="Generalization" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="InteractsLink" />
        <DomainRelationshipMoniker Name="Interaction" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="InteractsLink/Attack" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Interaction/Attack" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ContainsLink" />
        <DomainRelationshipMoniker Name="Contains" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainsLink/Attack" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Contains/Attack" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainsLink/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Contains/Number" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ContainsAsset" />
        <DomainRelationshipMoniker Name="ContainerReferencesAssets" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="LegitimateAccessConnector" />
        <DomainRelationshipMoniker Name="LegitimateAccess" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="LegitimateAccessConnector/Conditions" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="LegitimateAccess/Conditions" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="Risk" EditorGuid="d6887f99-099d-47fe-b69e-c00b0697ca75">
    <RootClass>
      <DomainClassMoniker Name="RiskModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="ComponentsSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Risk">
      <ElementTool Name="Container" ToolboxIcon="Resources\Container.bmp" Caption="Container" Tooltip="Represents part of a system being studied: a building, computer, network etc" HelpKeyword="CreateContainerF1Keyword">
        <DomainClassMoniker Name="Container" />
      </ElementTool>
      <ElementTool Name="Port" ToolboxIcon="Resources\ContainerPort.bmp" Caption="Port" Tooltip="Represents the ability to interact with something" HelpKeyword="Port">
        <DomainClassMoniker Name="Port" />
      </ElementTool>
      <ConnectionTool Name="Generalization" ToolboxIcon="resources\GeneralizationTool.bmp" Caption="Generalization" Tooltip="Connect a Container to a base Container." HelpKeyword="ConnectGeneralizationF1Keyword" ReversesDirection="true">
        <ConnectionBuilderMoniker Name="Risk/GeneralizationBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Interaction" ToolboxIcon="Resources\InteractionTool.bmp" Caption="Interaction" Tooltip="Connect 2 Ports to show an Interaction" HelpKeyword="Interaction">
        <ConnectionBuilderMoniker Name="Risk/InteractionBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Contains" ToolboxIcon="Resources\ContainsTool.bmp" Caption="Contains" Tooltip="Show that one container can be found located within another" HelpKeyword="Contains">
        <ConnectionBuilderMoniker Name="Risk/ContainsBuilder" />
      </ConnectionTool>
      <ElementTool Name="Asset" ToolboxIcon="Resources\Assets.bmp" Caption="Asset" Tooltip="Asset" HelpKeyword="Asset">
        <DomainClassMoniker Name="Asset" />
      </ElementTool>
      <ConnectionTool Name="ContainsAsset" ToolboxIcon="Resources\ContainsAsset.bmp" Caption="Contains Asset" Tooltip="Contains Asset" HelpKeyword="ContainsAsset">
        <ConnectionBuilderMoniker Name="Risk/ContainerReferencesAssetsBuilder" />
      </ConnectionTool>
      <ElementTool Name="Threat" ToolboxIcon="Resources\Agent.bmp" Caption="Threat Agent" Tooltip="Represents something active, a user, attacker or external event" HelpKeyword="Threat">
        <DomainClassMoniker Name="ThreatAgent" />
      </ElementTool>
      <ConnectionTool Name="LegitimateAccess" ToolboxIcon="Resources\LegitimateAccess.bmp" Caption="LegitimateAccess" Tooltip="Legitimate Access" HelpKeyword="LegitimateAccess">
        <ConnectionBuilderMoniker Name="Risk/LegitimateAccessBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="true" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="RiskDiagram" />
  </Designer>
  <Explorer ExplorerGuid="621bc91e-8a2f-48e2-a800-b9305ff98891" Title="">
    <ExplorerBehaviorMoniker Name="Risk/ContainerExplorer" />
  </Explorer>
</Dsl>
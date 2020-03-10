<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="dcaa76d0-34ef-466f-ab09-b6f3dadd948b" Description="Description for JA.Risk.Risk" Name="Risk" DisplayName="Risk" Namespace="JA.Risk" ProductName="Risk" CompanyName="JA" PackageGuid="c8c96252-ab8f-4284-84ea-defc13ac854b" PackageNamespace="JA.Risk" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="2f6974ea-1dc8-4ea9-945a-a63c86df2eab" Description="" Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <Properties>
        <DomainProperty Id="371a2ffb-0a87-4ac9-80d1-3640ec65c248" Description="The name of the element" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
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
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="8721f980-ccc6-4115-a1be-4e85ae475501" Description="The type of the container" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ContainerPort" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ContainerHasContainerPorts.ContainerPorts</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="70a78dd6-9b1b-452e-bd17-314df32f61fa" Description="Description for JA.Risk.Port" Name="Port" DisplayName="Port" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="7e7ffb3b-fc14-46ee-a021-eb9022be9768" Description="Represents something of value" Name="Asset" DisplayName="Asset" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="a27ca295-7dc9-4f31-bffa-d0eace58d5bd" Description="The number of instances of this asset" Name="Number" DisplayName="Number">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5ea7bd42-55d8-4e64-9e6b-b7b67b05932d" Description="The impact of disclosure of this asset" Name="SingleConfidentialityValue" DisplayName="Single Confidentiality Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dd904d38-ee8b-4e65-a61e-81e134000f67" Description="The impact of tampering with this asset" Name="SingleIntegrityValue" DisplayName="Single Integrity Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e066c9b1-8833-4137-9d4f-9836857a44a2" Description="The impact of loss of this asset" Name="SingleAvailabilityValue" DisplayName="Single Availability Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="c887e7ce-864d-4c36-a285-170f665ced7b" Description="Represents something active, a user, attacker or external event" Name="ThreatAgent" DisplayName="Threat Agent" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="4dd9846f-a569-4e4a-b696-f9dfd8c74b1a" Description="The number of instances of this threat" Name="Number" DisplayName="Number">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="AgentPort" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ThreatAgentHasAgentPorts.AgentPorts</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="ca862a24-a9b8-4e15-97ee-754e7412d3de" Description="Represents a threat agent's ability to interact with something" Name="AgentPort" DisplayName="Agent Port" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="Port" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="4f81a1fa-50bf-4f3a-9a57-66ca5c6128b7" Description="Represents a container's ability to interact with something" Name="ContainerPort" DisplayName="Container Port" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="Port" />
      </BaseClass>
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
    <DomainRelationship Id="d87498d4-8eb6-482f-bd76-f9a3e10b7424" Description="Description for JA.Risk.ThreatAgentHasAgentPorts" Name="ThreatAgentHasAgentPorts" DisplayName="Threat Agent Has Agent Ports" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="54eff892-a618-4042-a30e-6b6a25952c81" Description="Description for JA.Risk.ThreatAgentHasAgentPorts.ThreatAgent" Name="ThreatAgent" DisplayName="Threat Agent" PropertyName="AgentPorts" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Agent Ports">
          <RolePlayer>
            <DomainClassMoniker Name="ThreatAgent" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d051b622-9a7c-485d-8209-25c233a02df2" Description="Description for JA.Risk.ThreatAgentHasAgentPorts.AgentPort" Name="AgentPort" DisplayName="Agent Port" PropertyName="ThreatAgent" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Threat Agent">
          <RolePlayer>
            <DomainClassMoniker Name="AgentPort" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e416e821-fdff-4f58-b5bb-cd7642f5f878" Description="Description for JA.Risk.ContainerHasContainerPorts" Name="ContainerHasContainerPorts" DisplayName="Container Has Container Ports" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="ff938bef-865c-48ef-bf31-3fa1e6a6eede" Description="Description for JA.Risk.ContainerHasContainerPorts.Container" Name="Container" DisplayName="Container" PropertyName="ContainerPorts" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Container Ports">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="03eedc20-e58b-4899-9a0e-fdead84ae957" Description="Description for JA.Risk.ContainerHasContainerPorts.ContainerPort" Name="ContainerPort" DisplayName="Container Port" PropertyName="Container" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="ContainerPort" />
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
    <Port Id="80884b27-f893-48e5-a1b9-e46bb91cb9f8" Description="Description for JA.Risk.ContainerPortShape" Name="ContainerPortShape" DisplayName="Container Port Shape" Namespace="JA.Risk" FixedTooltipText="Container Port Shape" InitialWidth="0.2" InitialHeight="0.2" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0" isMoveable="true">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </Port>
    <GeometryShape Id="19b7c854-6e42-434d-a5d9-d548f5836e16" Description="Description for JA.Risk.ContainerShape" Name="ContainerShape" DisplayName="Container Shape" Namespace="JA.Risk" FixedTooltipText="Container Shape" FillColor="Khaki" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Type" DisplayName="Type" DefaultText="Type" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="ContainerIcon" DisplayName="Container Icon" DefaultIcon="Resources\Container.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="7ffcdbec-165c-4a8d-9101-57983f5b2442" Description="Description for JA.Risk.AssetShape" Name="AssetShape" DisplayName="Asset Shape" Namespace="JA.Risk" FixedTooltipText="Asset Shape" FillColor="PeachPuff" InitialHeight="1" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Number" DisplayName="Number of instances of this asset" DefaultText="1" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ConfidentialityValue" DisplayName="Confidentiality Value" DefaultText="0" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="IntegrityValue" DisplayName="Integrity Value" DefaultText="0" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="AvailabilityValue" DisplayName="Availability Value" DefaultText="0" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="AssetIcon" DisplayName="Asset Icon" DefaultIcon="Resources\Assets.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="dae726c6-ecc0-4dda-ba67-58215ce38201" Description="Description for JA.Risk.ThreatAgentShape" Name="ThreatAgentShape" DisplayName="Threat Agent Shape" Namespace="JA.Risk" FixedTooltipText="Threat Agent Shape" FillColor="LightCoral" InitialHeight="1" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Number" DisplayName="Number of instances" DefaultText="1" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="ThreatIcon" DisplayName="Threat Icon" DefaultIcon="Resources\Agent.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <Port Id="8b3a0f5b-7ee4-428f-b77b-ca4c88337933" Description="Description for JA.Risk.AgentPortShape" Name="AgentPortShape" DisplayName="Agent Port Shape" Namespace="JA.Risk" FixedTooltipText="Agent Port Shape" InitialWidth="0.2" InitialHeight="0.2" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0" isMoveable="true">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </Port>
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
  </Connectors>
  <XmlSerializationBehavior Name="ComponentsSerializationBehavior" Namespace="JA.Risk">
    <ClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="NamedElement/Name" />
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
          <XmlRelationshipData UseFullForm="true" RoleElementName="containerPorts">
            <DomainRelationshipMoniker Name="ContainerHasContainerPorts" />
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
      <XmlClassData TypeName="ContainerPortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerPortShapeMoniker" ElementName="containerPortShape" MonikerTypeName="ContainerPortShapeMoniker">
        <PortMoniker Name="ContainerPortShape" />
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
          <XmlRelationshipData UseFullForm="true" RoleElementName="agentPorts">
            <DomainRelationshipMoniker Name="ThreatAgentHasAgentPorts" />
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
      <XmlClassData TypeName="ContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerShapeMoniker" ElementName="containerShape" MonikerTypeName="ContainerShapeMoniker">
        <GeometryShapeMoniker Name="ContainerShape" />
      </XmlClassData>
      <XmlClassData TypeName="AssetShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="assetShapeMoniker" ElementName="assetShape" MonikerTypeName="AssetShapeMoniker">
        <GeometryShapeMoniker Name="AssetShape" />
      </XmlClassData>
      <XmlClassData TypeName="ThreatAgentShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="threatAgentShapeMoniker" ElementName="threatAgentShape" MonikerTypeName="ThreatAgentShapeMoniker">
        <GeometryShapeMoniker Name="ThreatAgentShape" />
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
      <XmlClassData TypeName="AgentPort" MonikerAttributeName="" SerializeId="true" MonikerElementName="agentPortMoniker" ElementName="agentPort" MonikerTypeName="AgentPortMoniker">
        <DomainClassMoniker Name="AgentPort" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerPort" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerPortMoniker" ElementName="containerPort" MonikerTypeName="ContainerPortMoniker">
        <DomainClassMoniker Name="ContainerPort" />
      </XmlClassData>
      <XmlClassData TypeName="ThreatAgentHasAgentPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="threatAgentHasAgentPortsMoniker" ElementName="threatAgentHasAgentPorts" MonikerTypeName="ThreatAgentHasAgentPortsMoniker">
        <DomainRelationshipMoniker Name="ThreatAgentHasAgentPorts" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasContainerPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasContainerPortsMoniker" ElementName="containerHasContainerPorts" MonikerTypeName="ContainerHasContainerPortsMoniker">
        <DomainRelationshipMoniker Name="ContainerHasContainerPorts" />
      </XmlClassData>
      <XmlClassData TypeName="AgentPortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="agentPortShapeMoniker" ElementName="agentPortShape" MonikerTypeName="AgentPortShapeMoniker">
        <PortMoniker Name="AgentPortShape" />
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
  </ConnectionBuilders>
  <Diagram Id="84dfe933-9d52-41cd-982f-ca14293a514d" Description="" Name="RiskDiagram" DisplayName="Risk Diagram" Namespace="JA.Risk">
    <Class>
      <DomainClassMoniker Name="RiskModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Asset" />
        <ParentElementPath>
          <DomainPath>RiskModelHasAssets.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetShape/AvailabilityValue" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Asset/SingleAvailabilityValue" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetShape/ConfidentialityValue" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Asset/SingleConfidentialityValue" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetShape/IntegrityValue" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Asset/SingleIntegrityValue" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssetShape/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Asset/Number" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="AssetShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="ThreatAgent" />
        <ParentElementPath>
          <DomainPath>RiskModelHasThreatAgents.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ThreatAgentShape/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ThreatAgent/Number" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ThreatAgentShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ThreatAgentShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Container" />
        <ParentElementPath>
          <DomainPath>RiskModelHasContainers.RiskModel/!RiskModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerShape/Type" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Type" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ContainerShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="ContainerPort" />
        <ParentElementPath>
          <DomainPath>ContainerHasContainerPorts.Container/!Container</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerPortShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <PortMoniker Name="ContainerPortShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AgentPort" />
        <ParentElementPath>
          <DomainPath>ThreatAgentHasAgentPorts.ThreatAgent/!ThreatAgent</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainerPortShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AgentPortShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <PortMoniker Name="AgentPortShape" />
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
      <ElementTool Name="ContainerPort" ToolboxIcon="Resources\ContainerPort.bmp" Caption="ContainerPort" Tooltip="Represents a container's ability to interact with something" HelpKeyword="ContainerPort">
        <DomainClassMoniker Name="ContainerPort" />
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
      <ElementTool Name="AgentPort" ToolboxIcon="Resources\AgentPort.bmp" Caption="Threat Agent Port" Tooltip="Represents a threat agent's ability to interact with something" HelpKeyword="AgentPort">
        <DomainClassMoniker Name="AgentPort" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="RiskDiagram" />
  </Designer>
  <Explorer ExplorerGuid="621bc91e-8a2f-48e2-a800-b9305ff98891" Title="">
    <ExplorerBehaviorMoniker Name="Risk/ContainerExplorer" />
  </Explorer>
</Dsl>
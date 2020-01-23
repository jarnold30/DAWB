<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="dcaa76d0-34ef-466f-ab09-b6f3dadd948b" Description="Description for JA.Risk.Risk" Name="Risk" DisplayName="Risk" Namespace="JA.Risk" ProductName="Risk" CompanyName="JA" PackageGuid="c8c96252-ab8f-4284-84ea-defc13ac854b" PackageNamespace="JA.Risk" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="2f6974ea-1dc8-4ea9-945a-a63c86df2eab" Description="" Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="JA.Risk">
      <Properties>
        <DomainProperty Id="371a2ffb-0a87-4ac9-80d1-3640ec65c248" Description="" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
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
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="05a5c5ec-ce41-469f-b478-e541d5aadb08" Description="" Name="Container" DisplayName="Container" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="8721f980-ccc6-4115-a1be-4e85ae475501" Description="Description for JA.Risk.Container.Type" Name="Type" DisplayName="Type">
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
            <DomainPath>ContainerHasPorts.Ports</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Asset" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ContainerHasAssets.Assets</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ThreatAgent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ContainerHasAgents.ThreatAgents</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="70a78dd6-9b1b-452e-bd17-314df32f61fa" Description="Description for JA.Risk.Port" Name="Port" DisplayName="Port" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="7e7ffb3b-fc14-46ee-a021-eb9022be9768" Description="Description for JA.Risk.Asset" Name="Asset" DisplayName="Asset" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="c887e7ce-864d-4c36-a285-170f665ced7b" Description="Description for JA.Risk.ThreatAgent" Name="ThreatAgent" DisplayName="Threat Agent" Namespace="JA.Risk">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="6ce9efea-f98d-493e-afd1-bdef14cc726d" Description="" Name="ContainerHasPorts" DisplayName="Container Has Ports" Namespace="JA.Risk" IsEmbedding="true">
      <Notes>The embedding between a Component and its InPorts and OutPorts.</Notes>
      <Source>
        <DomainRole Id="ba5b6249-4ee8-4916-9091-c6baff731967" Description="" Name="Container" DisplayName="Container" PropertyName="Ports" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Ports">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e7978655-4401-4fe7-b600-cfa57b15e6f0" Description="" Name="Port" DisplayName="Port" PropertyName="Container" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="Port" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
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
        <DomainProperty Id="b92f1c8b-af20-4535-8f1b-c6fa08eb4b57" Description="Description for JA.Risk.Interaction.Name" Name="Name" DisplayName="Name">
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
    <DomainRelationship Id="d1c46760-a413-42f9-adfe-0648a04b9464" Description="Description for JA.Risk.ContainerHasAssets" Name="ContainerHasAssets" DisplayName="Container Has Assets" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="48a88ba6-feb5-4413-98f0-c6a6256214ca" Description="Description for JA.Risk.ContainerHasAssets.Container" Name="Container" DisplayName="Container" PropertyName="Assets" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Assets">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="af82d81f-ac2b-4602-a0de-0bc1b65e777c" Description="Description for JA.Risk.ContainerHasAssets.Asset" Name="Asset" DisplayName="Asset" PropertyName="Container" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="Asset" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f73ad41a-0e8a-41bd-81ab-020155550f1f" Description="Description for JA.Risk.ContainerHasAgents" Name="ContainerHasAgents" DisplayName="Container Has Agents" Namespace="JA.Risk" IsEmbedding="true">
      <Source>
        <DomainRole Id="5c867e0f-6f4d-4a85-9be3-a1a0d03ccafa" Description="Description for JA.Risk.ContainerHasAgents.Container" Name="Container" DisplayName="Container" PropertyName="ThreatAgents" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Threat Agents">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="161e1f99-7035-4b52-b1e2-263d31bc3f95" Description="Description for JA.Risk.ContainerHasAgents.ThreatAgent" Name="ThreatAgent" DisplayName="Threat Agent" PropertyName="Container" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="ThreatAgent" />
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
    <Port Id="80884b27-f893-48e5-a1b9-e46bb91cb9f8" Description="Description for JA.Risk.PortShape" Name="PortShape" DisplayName="Port Shape" Namespace="JA.Risk" FixedTooltipText="Port Shape" InitialWidth="0.2" InitialHeight="0.2" Geometry="Rectangle">
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0" isMoveable="true">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </Port>
    <CompartmentShape Id="8c2002d0-51df-4961-a2de-49a4304f34b0" Description="Description for JA.Risk.ContainerShape" Name="ContainerShape" DisplayName="Container Shape" Namespace="JA.Risk" FixedTooltipText="Container Shape" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapse" DisplayName="Expand Collapse" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Type" DisplayName="Type" DefaultText="Type" />
      </ShapeHasDecorators>
      <Compartment Name="Assets" Title="Assets" />
      <Compartment Name="Agents" Title="Threat Agents" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="df711bf1-2083-4550-a040-755ee2d314ab" Description="" Name="InteractsLink" DisplayName="Interacts Link" Namespace="JA.Risk" FixedTooltipText="Interacts Link" Color="113, 111, 110" Thickness="0.01">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="4d24e955-8568-4b61-bbcb-3292a9f7f276" Description="" Name="GeneralizationLink" DisplayName="Generalization Link" Namespace="JA.Risk" FixedTooltipText="Generalization Link" Color="113, 111, 110" SourceEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="b24d3f7b-f24f-488a-92ff-ebe349688eb5" Description="Description for JA.Risk.ContainsLink" Name="ContainsLink" DisplayName="Contains Link" Namespace="JA.Risk" FixedTooltipText="Contains Link" SourceEndStyle="FilledDiamond" TargetEndStyle="FilledArrow">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="Number" DisplayName="Number" DefaultText="Number" />
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
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="RiskModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="riskModelMoniker" ElementName="riskModel" MonikerTypeName="RiskModelMoniker">
        <DomainClassMoniker Name="RiskModel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="containers">
            <DomainRelationshipMoniker Name="RiskModelHasContainers" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Container" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerMoniker" ElementName="container" MonikerTypeName="ContainerMoniker">
        <DomainClassMoniker Name="Container" />
        <ElementData>
          <XmlRelationshipData RoleElementName="ports">
            <DomainRelationshipMoniker Name="ContainerHasPorts" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="subclasses">
            <DomainRelationshipMoniker Name="Generalization" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="assets">
            <DomainRelationshipMoniker Name="ContainerHasAssets" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="threatAgents">
            <DomainRelationshipMoniker Name="ContainerHasAgents" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetContainers">
            <DomainRelationshipMoniker Name="Contains" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="Container/Type" />
          </XmlPropertyData>
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
      <XmlClassData TypeName="ContainerHasPorts" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasPortsMoniker" ElementName="containerHasPorts" MonikerTypeName="ContainerHasPortsMoniker">
        <DomainRelationshipMoniker Name="ContainerHasPorts" />
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
      <XmlClassData TypeName="PortShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="portShapeMoniker" ElementName="portShape" MonikerTypeName="PortShapeMoniker">
        <PortMoniker Name="PortShape" />
      </XmlClassData>
      <XmlClassData TypeName="Interaction" MonikerAttributeName="" SerializeId="true" MonikerElementName="interactionMoniker" ElementName="interaction" MonikerTypeName="InteractionMoniker">
        <DomainRelationshipMoniker Name="Interaction" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Interaction/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Asset" MonikerAttributeName="" SerializeId="true" MonikerElementName="assetMoniker" ElementName="asset" MonikerTypeName="AssetMoniker">
        <DomainClassMoniker Name="Asset" />
      </XmlClassData>
      <XmlClassData TypeName="ThreatAgent" MonikerAttributeName="" SerializeId="true" MonikerElementName="threatAgentMoniker" ElementName="threatAgent" MonikerTypeName="ThreatAgentMoniker">
        <DomainClassMoniker Name="ThreatAgent" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasAssets" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasAssetsMoniker" ElementName="containerHasAssets" MonikerTypeName="ContainerHasAssetsMoniker">
        <DomainRelationshipMoniker Name="ContainerHasAssets" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasAgents" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasAgentsMoniker" ElementName="containerHasAgents" MonikerTypeName="ContainerHasAgentsMoniker">
        <DomainRelationshipMoniker Name="ContainerHasAgents" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerShapeMoniker" ElementName="containerShape" MonikerTypeName="ContainerShapeMoniker">
        <CompartmentShapeMoniker Name="ContainerShape" />
      </XmlClassData>
      <XmlClassData TypeName="Contains" MonikerAttributeName="" SerializeId="true" MonikerElementName="containsMoniker" ElementName="contains" MonikerTypeName="ContainsMoniker">
        <DomainRelationshipMoniker Name="Contains" />
        <ElementData>
          <XmlPropertyData XmlName="number">
            <DomainPropertyMoniker Name="Contains/Number" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ContainsLink" MonikerAttributeName="" SerializeId="true" MonikerElementName="containsLinkMoniker" ElementName="containsLink" MonikerTypeName="ContainsLinkMoniker">
        <ConnectorMoniker Name="ContainsLink" />
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
  </ConnectionBuilders>
  <Diagram Id="84dfe933-9d52-41cd-982f-ca14293a514d" Description="" Name="RiskDiagram" DisplayName="Risk Diagram" Namespace="JA.Risk">
    <Class>
      <DomainClassMoniker Name="RiskModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Port" />
        <ParentElementPath>
          <DomainPath>ContainerHasPorts.Container/!Container</DomainPath>
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
      <CompartmentShapeMap>
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
        <CompartmentShapeMoniker Name="ContainerShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ContainerShape/Agents" />
          <ElementsDisplayed>
            <DomainPath>ContainerHasAgents.ThreatAgents/!ThreatAgent</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="ContainerShape/Assets" />
          <ElementsDisplayed>
            <DomainPath>ContainerHasAssets.Assets/!Asset</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
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
          <TextDecoratorMoniker Name="InteractsLink/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Interaction/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ContainsLink" />
        <DomainRelationshipMoniker Name="Contains" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="ContainsLink/Number" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Contains/Number" />
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
      <ElementTool Name="Container" ToolboxIcon="Resources\Container.bmp" Caption="Container" Tooltip="A container or structure" HelpKeyword="CreateContainerF1Keyword">
        <DomainClassMoniker Name="Container" />
      </ElementTool>
      <ElementTool Name="Port" ToolboxIcon="Resources\Port.bmp" Caption="Port" Tooltip="An interaction method" HelpKeyword="Port">
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
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="RiskDiagram" />
  </Designer>
  <Explorer ExplorerGuid="621bc91e-8a2f-48e2-a800-b9305ff98891" Title="">
    <ExplorerBehaviorMoniker Name="Risk/ContainerExplorer" />
  </Explorer>
</Dsl>
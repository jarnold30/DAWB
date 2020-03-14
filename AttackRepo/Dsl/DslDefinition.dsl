<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="58d31a1a-18f5-4c03-b7e1-3864d5a01b57" Description="Description for JA.Attack.Attack" Name="Attack" DisplayName="Attack" Namespace="JA.Attack" ProductName="Attack" CompanyName="JA" PackageGuid="7d9be207-7bdf-414f-925d-c67a372940bf" PackageNamespace="JA.Attack" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="9169ce08-68e8-4537-a2ae-e5047096c743" Description="The root in which all other elements are embedded. Appears as a diagram." Name="AttackGraph" DisplayName="Attack Graph" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="FlowElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AttackGraphHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0015f537-1b99-4d14-8af9-77c7d560ac79" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="FlowElement" DisplayName="Flow Element" InheritanceModifier="Abstract" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="2521d3ca-5ac9-478f-9241-2571b828e58e" Description="The start of doing 2 things in parallel" Name="Synchronisation" DisplayName="Synchronisation" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="c15eb944-2543-4423-81ad-63116d429019" Description="Where a threat agent starts from" Name="StartPoint" DisplayName="Start Point" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="97233ffa-5d78-44c0-a7ec-d47376b93677" Description="Where a threat agent ends up at" Name="EndPoint" DisplayName="End Point" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="60cdf59d-778f-4acd-b006-0336e39ce8ad" Description="Merges 2 possible paths" Name="MergeBranch" DisplayName="Merge Branch" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="369f91e0-d2f6-4e86-a7bb-f7d6a3bb6813" Description="Something a threat agent has to do in order to gain a level of access" Name="Task" DisplayName="Task" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="629d55df-56f9-4b15-9b36-4c0fa0d7567d" Description="The most likely estimate of the chance of success" Name="Probability" DisplayName="Probability">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a52ed468-08a9-4442-b7e9-347dfb9f0fea" Description="The success likelihood has a 10% chance of being below this figure" Name="Confidence10Percent" DisplayName="10th Percent Confidence">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="51158d4a-bf1b-4cf5-81c1-e848bf782c3d" Description="The success probability has a 90% chance of being below this value" Name="Confidence90Percent" DisplayName="90th Percent Confidence">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="PreCondition" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TaskHasPreConditions.PreConditions</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="4a83155a-879c-4c77-8289-78da25ff67df" Description="A level of access a threat agent can achieve" Name="State" DisplayName="State" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="PostCondition" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>StateHasPostConditions.PostConditions</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="581fe8a9-3915-4702-8f55-160ce5753588" Description="Description for JA.Attack.NamedElement" Name="NamedElement" DisplayName="Named Element" Namespace="JA.Attack">
      <Properties>
        <DomainProperty Id="27ee9785-9171-4fbf-8466-f93f355186b0" Description="The name of the element" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4a7dd5cc-0d82-431a-9081-42695b1b726d" Description="A condition that applies to a threat agent" Name="Condition" DisplayName="Condition" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="492be2bb-e6ae-43f4-9e53-c142977c963e" Description="Something a threat agent needs in order to perform a task" Name="PreCondition" DisplayName="Pre Condition" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="Condition" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="13d05d8d-a143-45e7-a8dc-aeb517cc7e8b" Description="Something the threat agent has when in a state" Name="PostCondition" DisplayName="Post Condition" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="Condition" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="ff2a0cb4-089f-4075-b493-318d7766f3cb" Description="Embedding relationship between the Model and Elements" Name="AttackGraphHasElements" DisplayName="Attack Graph Has Elements" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="dea90e84-611c-4724-9436-1c52b0500db3" Description="" Name="AttackGraph" DisplayName="Attack Graph" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="AttackGraph" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="173d1a5f-4035-4477-a91e-cc3b8b3c03ac" Description="" Name="Element" DisplayName="Element" PropertyName="AttackGraph" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Attack Graph">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="38daab5e-519d-412e-a98b-b4d0439f2b76" Description="Description for JA.Attack.TaskHasPreConditions" Name="TaskHasPreConditions" DisplayName="Task Has Pre Conditions" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="8e2b7181-e846-419d-a4d4-3e99e98697e8" Description="Description for JA.Attack.TaskHasPreConditions.Task" Name="Task" DisplayName="Task" PropertyName="PreConditions" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Pre Conditions">
          <RolePlayer>
            <DomainClassMoniker Name="Task" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d12b7179-014d-4956-9692-e37900403ea9" Description="Description for JA.Attack.TaskHasPreConditions.PreCondition" Name="PreCondition" DisplayName="Pre Condition" PropertyName="Task" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Task">
          <RolePlayer>
            <DomainClassMoniker Name="PreCondition" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="fb580b34-d783-4ff0-9565-d5ea5a05d3d8" Description="Description for JA.Attack.StateHasPostConditions" Name="StateHasPostConditions" DisplayName="State Has Post Conditions" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="74e4c13f-5520-4fd1-8f6d-c7197fdc87ea" Description="Description for JA.Attack.StateHasPostConditions.State" Name="State" DisplayName="State" PropertyName="PostConditions" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Post Conditions">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0239a672-5e66-4615-9ea4-a1aeb9305754" Description="Description for JA.Attack.StateHasPostConditions.PostCondition" Name="PostCondition" DisplayName="Post Condition" PropertyName="State" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="State">
          <RolePlayer>
            <DomainClassMoniker Name="PostCondition" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d78b04e7-dfef-4469-8f7f-70ede2f9493f" Description="Description for JA.Attack.FlowRelationship" Name="FlowRelationship" DisplayName="Flow Relationship" Namespace="JA.Attack">
      <Source>
        <DomainRole Id="301771d8-8b40-4f9e-a255-ff1ffb5d8dc9" Description="Description for JA.Attack.FlowRelationship.SourceFlowElement" Name="SourceFlowElement" DisplayName="Source Flow Element" PropertyName="TargetFlowElements" PropertyDisplayName="Target Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a502e47d-b6b9-4a33-803a-ebf4f8851caa" Description="Description for JA.Attack.FlowRelationship.TargetFlowElement" Name="TargetFlowElement" DisplayName="Target Flow Element" PropertyName="SourceFlowElements" PropertyDisplayName="Source Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
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
    <CompartmentShape Id="647106f4-fe3c-4b7d-b26f-0e65fdc3c4fb" Description="Description for JA.Attack.TaskShape" Name="TaskShape" DisplayName="Task Shape" Namespace="JA.Attack" FixedTooltipText="Task Shape" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapse" DisplayName="Expand/Collapse" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0.2">
        <TextDecorator Name="Probability" DisplayName="Probability" DefaultText="Probability" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0.2">
        <TextDecorator Name="Confidence10Percent" DisplayName="Confidence10 Percent" DefaultText="Confidence10Percent" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0.2">
        <TextDecorator Name="Confidence90Percent" DisplayName="Confidence90 Percent" DefaultText="Confidence90Percent" />
      </ShapeHasDecorators>
      <Compartment Name="PreConditions" Title="Pre Conditions" />
    </CompartmentShape>
    <CompartmentShape Id="6f1c327d-c77d-4721-be2b-1a79b5958a37" Description="Description for JA.Attack.StateShape" Name="StateShape" DisplayName="State Shape" Namespace="JA.Attack" FixedTooltipText="State Shape" InitialHeight="1" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapse" DisplayName="Expand/Collapse" />
      </ShapeHasDecorators>
      <Compartment Name="PostConditions" Title="Post Conditions" />
    </CompartmentShape>
    <ImageShape Id="563a6020-5287-4d7b-892b-99f6584f8033" Description="Description for JA.Attack.SyncShape" Name="SyncShape" DisplayName="Sync Shape" Namespace="JA.Attack" FixedTooltipText="Sync Shape" InitialHeight="1" Image="Resources\SyncBarTool.bmp" />
    <ImageShape Id="7b1fde56-7cdf-49cd-bbfa-17174aec77c5" Description="Description for JA.Attack.StartShape" Name="StartShape" DisplayName="Start Shape" Namespace="JA.Attack" FixedTooltipText="Start Shape" InitialHeight="1" Image="Resources\StartTool.bmp" />
    <ImageShape Id="761bcdd0-7714-4fc5-a77d-62acb5e17b4a" Description="Description for JA.Attack.EndShape" Name="EndShape" DisplayName="End Shape" Namespace="JA.Attack" FixedTooltipText="End Shape" InitialHeight="1" Image="Resources\EndTool.bmp" />
    <ImageShape Id="467cf175-1f93-4210-a4c7-31c1af4b2e38" Description="Description for JA.Attack.MergeShape" Name="MergeShape" DisplayName="Merge Shape" Namespace="JA.Attack" FixedTooltipText="Merge Shape" InitialHeight="1" Image="Resources\MergeBranchTool.bmp">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
    </ImageShape>
  </Shapes>
  <Connectors>
    <Connector Id="cd7a8704-5736-4e12-940e-b14c4b14b025" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="FlowConnector" DisplayName="Flow Connector" Namespace="JA.Attack" FixedTooltipText="Flow Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="AttackSerializationBehavior" Namespace="JA.Attack">
    <ClassData>
      <XmlClassData TypeName="AttackGraph" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackGraphMoniker" ElementName="attackGraph" MonikerTypeName="AttackGraphMoniker">
        <DomainClassMoniker Name="AttackGraph" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="AttackGraphHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FlowElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowElementMoniker" ElementName="flowElement" MonikerTypeName="FlowElementMoniker">
        <DomainClassMoniker Name="FlowElement" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetFlowElements">
            <DomainRelationshipMoniker Name="FlowRelationship" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AttackGraphHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackGraphHasElementsMoniker" ElementName="attackGraphHasElements" MonikerTypeName="AttackGraphHasElementsMoniker">
        <DomainRelationshipMoniker Name="AttackGraphHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="FlowConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowConnectorMoniker" ElementName="flowConnector" MonikerTypeName="FlowConnectorMoniker">
        <ConnectorMoniker Name="FlowConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AttackDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackDiagramMoniker" ElementName="attackDiagram" MonikerTypeName="AttackDiagramMoniker">
        <DiagramMoniker Name="AttackDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Synchronisation" MonikerAttributeName="" SerializeId="true" MonikerElementName="synchronisationMoniker" ElementName="synchronisation" MonikerTypeName="SynchronisationMoniker">
        <DomainClassMoniker Name="Synchronisation" />
      </XmlClassData>
      <XmlClassData TypeName="StartPoint" MonikerAttributeName="" SerializeId="true" MonikerElementName="startPointMoniker" ElementName="startPoint" MonikerTypeName="StartPointMoniker">
        <DomainClassMoniker Name="StartPoint" />
      </XmlClassData>
      <XmlClassData TypeName="EndPoint" MonikerAttributeName="" SerializeId="true" MonikerElementName="endPointMoniker" ElementName="endPoint" MonikerTypeName="EndPointMoniker">
        <DomainClassMoniker Name="EndPoint" />
      </XmlClassData>
      <XmlClassData TypeName="MergeBranch" MonikerAttributeName="" SerializeId="true" MonikerElementName="mergeBranchMoniker" ElementName="mergeBranch" MonikerTypeName="MergeBranchMoniker">
        <DomainClassMoniker Name="MergeBranch" />
      </XmlClassData>
      <XmlClassData TypeName="Task" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskMoniker" ElementName="task" MonikerTypeName="TaskMoniker">
        <DomainClassMoniker Name="Task" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="preConditions">
            <DomainRelationshipMoniker Name="TaskHasPreConditions" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="probability">
            <DomainPropertyMoniker Name="Task/Probability" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="confidence10Percent">
            <DomainPropertyMoniker Name="Task/Confidence10Percent" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="confidence90Percent">
            <DomainPropertyMoniker Name="Task/Confidence90Percent" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="State" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateMoniker" ElementName="state" MonikerTypeName="StateMoniker">
        <DomainClassMoniker Name="State" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="postConditions">
            <DomainRelationshipMoniker Name="StateHasPostConditions" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="NamedElement/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Condition" MonikerAttributeName="" SerializeId="true" MonikerElementName="conditionMoniker" ElementName="condition" MonikerTypeName="ConditionMoniker">
        <DomainClassMoniker Name="Condition" />
      </XmlClassData>
      <XmlClassData TypeName="PreCondition" MonikerAttributeName="" SerializeId="true" MonikerElementName="preConditionMoniker" ElementName="preCondition" MonikerTypeName="PreConditionMoniker">
        <DomainClassMoniker Name="PreCondition" />
      </XmlClassData>
      <XmlClassData TypeName="PostCondition" MonikerAttributeName="" SerializeId="true" MonikerElementName="postConditionMoniker" ElementName="postCondition" MonikerTypeName="PostConditionMoniker">
        <DomainClassMoniker Name="PostCondition" />
      </XmlClassData>
      <XmlClassData TypeName="TaskShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskShapeMoniker" ElementName="taskShape" MonikerTypeName="TaskShapeMoniker">
        <CompartmentShapeMoniker Name="TaskShape" />
      </XmlClassData>
      <XmlClassData TypeName="StateShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateShapeMoniker" ElementName="stateShape" MonikerTypeName="StateShapeMoniker">
        <CompartmentShapeMoniker Name="StateShape" />
      </XmlClassData>
      <XmlClassData TypeName="TaskHasPreConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskHasPreConditionsMoniker" ElementName="taskHasPreConditions" MonikerTypeName="TaskHasPreConditionsMoniker">
        <DomainRelationshipMoniker Name="TaskHasPreConditions" />
      </XmlClassData>
      <XmlClassData TypeName="StateHasPostConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateHasPostConditionsMoniker" ElementName="stateHasPostConditions" MonikerTypeName="StateHasPostConditionsMoniker">
        <DomainRelationshipMoniker Name="StateHasPostConditions" />
      </XmlClassData>
      <XmlClassData TypeName="FlowRelationship" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowRelationshipMoniker" ElementName="flowRelationship" MonikerTypeName="FlowRelationshipMoniker">
        <DomainRelationshipMoniker Name="FlowRelationship" />
      </XmlClassData>
      <XmlClassData TypeName="SyncShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="syncShapeMoniker" ElementName="syncShape" MonikerTypeName="SyncShapeMoniker">
        <ImageShapeMoniker Name="SyncShape" />
      </XmlClassData>
      <XmlClassData TypeName="StartShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="startShapeMoniker" ElementName="startShape" MonikerTypeName="StartShapeMoniker">
        <ImageShapeMoniker Name="StartShape" />
      </XmlClassData>
      <XmlClassData TypeName="EndShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="endShapeMoniker" ElementName="endShape" MonikerTypeName="EndShapeMoniker">
        <ImageShapeMoniker Name="EndShape" />
      </XmlClassData>
      <XmlClassData TypeName="MergeShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="mergeShapeMoniker" ElementName="mergeShape" MonikerTypeName="MergeShapeMoniker">
        <ImageShapeMoniker Name="MergeShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="AttackExplorer">
    <CustomNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\TaskTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="Task" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\ObjectTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="State" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\SyncBarTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="Synchronisation" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\StartTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="StartPoint" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\EndTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="EndPoint" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\MergeBranchTool.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="MergeBranch" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Precondition.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="PreCondition" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Postcondition.bmp" ShowsDomainClass="true">
        <Class>
          <DomainClassMoniker Name="PostCondition" />
        </Class>
      </ExplorerNodeSettings>
    </CustomNodeSettings>
  </ExplorerBehavior>
  <ConnectionBuilders>
    <ConnectionBuilder Name="FlowRelationshipBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FlowRelationship" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FlowElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="97e8819e-b30a-4752-a0f3-a8b93cfe6dc7" Description="Description for JA.Attack.AttackDiagram" Name="AttackDiagram" DisplayName="Minimal Language Diagram" Namespace="JA.Attack">
    <Class>
      <DomainClassMoniker Name="AttackGraph" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Task" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TaskShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TaskShape/Confidence10Percent" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Task/Confidence10Percent" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TaskShape/Confidence90Percent" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Task/Confidence90Percent" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TaskShape/Probability" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Task/Probability" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="TaskShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="TaskShape/PreConditions" />
          <ElementsDisplayed>
            <DomainPath>TaskHasPreConditions.PreConditions/!PreCondition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="State" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="StateShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="StateShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="StateShape/PostConditions" />
          <ElementsDisplayed>
            <DomainPath>StateHasPostConditions.PostConditions/!PostCondition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Synchronisation" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="SyncShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="StartPoint" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="StartShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EndPoint" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="EndShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MergeBranch" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MergeShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <ImageShapeMoniker Name="MergeShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="FlowConnector" />
        <DomainRelationshipMoniker Name="FlowRelationship" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="Attack" EditorGuid="4112372e-b85a-4746-987f-7ccf1fbb0485">
    <RootClass>
      <DomainClassMoniker Name="AttackGraph" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="AttackSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Attack">
      <ConnectionTool Name="FlowTool" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Flow" Tooltip="Creates a flow to show the sequencing of tasks and states" HelpKeyword="FlowTool" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="Attack/FlowRelationshipBuilder" />
      </ConnectionTool>
      <ElementTool Name="TaskTool" ToolboxIcon="Resources\TaskTool.bmp" Caption="Task" Tooltip="A task describes something that has to be done to gain access" HelpKeyword="TaskTool">
        <DomainClassMoniker Name="Task" />
      </ElementTool>
      <ElementTool Name="StateTool" ToolboxIcon="Resources\ObjectTool.bmp" Caption="State" Tooltip="Describes a level of access" HelpKeyword="StateTool">
        <DomainClassMoniker Name="State" />
      </ElementTool>
      <ElementTool Name="SyncTool" ToolboxIcon="Resources\SyncBarTool.bmp" Caption="Sync" Tooltip="Represents the start of parallel options" HelpKeyword="SyncTool">
        <DomainClassMoniker Name="Synchronisation" />
      </ElementTool>
      <ElementTool Name="StartTool" ToolboxIcon="Resources\StartTool.bmp" Caption="Start" Tooltip="Where the threat agent starts from" HelpKeyword="StartTool">
        <DomainClassMoniker Name="StartPoint" />
      </ElementTool>
      <ElementTool Name="EndTool" ToolboxIcon="Resources\EndTool.bmp" Caption="End" Tooltip="Where the threat agent ends up" HelpKeyword="EndTool">
        <DomainClassMoniker Name="EndPoint" />
      </ElementTool>
      <ElementTool Name="MergeTool" ToolboxIcon="Resources\MergeBranchTool.bmp" Caption="Merge" Tooltip="Represents where parallel options remerge" HelpKeyword="MergeTool">
        <DomainClassMoniker Name="MergeBranch" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="true" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="AttackDiagram" />
  </Designer>
  <Explorer ExplorerGuid="08d6a4e5-ca5e-44d8-9fb3-5f2bcffce0f1" Title="Attack Explorer">
    <ExplorerBehaviorMoniker Name="Attack/AttackExplorer" />
  </Explorer>
</Dsl>
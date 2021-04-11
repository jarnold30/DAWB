 
%%
%% Risk model: Risk2
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3, assetHasCondition/3.
:- multifile agentHasLegitimateAccesses/4, containerHasCondition/3, containerHasAssets/3, agentHasLegitimateAccesses/3.
:- multifile containerFunction/4, cond/2.
:- discontiguous container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3, assetHasCondition/3.
:- discontiguous agentHasLegitimateAccesses/4, containerHasCondition/3, containerHasAssets/3, agentHasLegitimateAccesses/3.
:- discontiguous containerFunction/4, cond/2.
:- dynamic agentHasCondition/3.
%% Here is a list of containers in the model:
container( 'Risk2', 'Container1' ).

%% Here is a list of assets in the model:

%% Here is a list of threat agents in the model:

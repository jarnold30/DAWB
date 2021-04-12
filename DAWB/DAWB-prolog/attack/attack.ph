#requires @"..\DAWB-prolog\attack\attack.pack"

% publicly used packages
#include @"pfc\collection\collection.ph"
#include @"risk\risk.ph"
#include @"main.ph"
#include @"generated\generated.ph"
#include @"common\common.ph"
#include @"pfc\core.ph"

% exported interfaces
#include @"attack\flow.i"
#include @"attack\state.i"
#include @"attack\endPoint.i"
#include @"attack\start.i"
#include @"attack\task.i"
#include @"attack\slot.i"
% exported classes
#include @"attack\flow.cl"
#include @"attack\state.cl"
#include @"attack\attackWalker.cl"
#include @"attack\slot.cl"
#include @"attack\task.cl"
#include @"attack\endPoint.cl"
#include @"attack\start.cl"
#include @"..\DAWB-prolog\attack\attack.cl"

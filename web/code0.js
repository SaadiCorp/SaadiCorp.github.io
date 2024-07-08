gdjs.mainCode = {};
gdjs.mainCode.localVariables = [];
gdjs.mainCode.GDblack_9595bgObjects1= [];
gdjs.mainCode.GDblack_9595bgObjects2= [];
gdjs.mainCode.GDh1Objects1= [];
gdjs.mainCode.GDh1Objects2= [];
gdjs.mainCode.GDh2Objects1= [];
gdjs.mainCode.GDh2Objects2= [];
gdjs.mainCode.GDsc_9595introObjects1= [];
gdjs.mainCode.GDsc_9595introObjects2= [];
gdjs.mainCode.GDsc_9595logoObjects1= [];
gdjs.mainCode.GDsc_9595logoObjects2= [];
gdjs.mainCode.GDold_9595overlyObjects1= [];
gdjs.mainCode.GDold_9595overlyObjects2= [];
gdjs.mainCode.GD_9595Objects1= [];
gdjs.mainCode.GD_9595Objects2= [];
gdjs.mainCode.GDgObjects1= [];
gdjs.mainCode.GDgObjects2= [];
gdjs.mainCode.GDiObjects1= [];
gdjs.mainCode.GDiObjects2= [];
gdjs.mainCode.GDtObjects1= [];
gdjs.mainCode.GDtObjects2= [];
gdjs.mainCode.GDbuttonObjects1= [];
gdjs.mainCode.GDbuttonObjects2= [];
gdjs.mainCode.GDlmObjects1= [];
gdjs.mainCode.GDlmObjects2= [];


gdjs.mainCode.mapOfGDgdjs_9546mainCode_9546GDbuttonObjects1Objects = Hashtable.newFrom({"button": gdjs.mainCode.GDbuttonObjects1});
gdjs.mainCode.mapOfGDgdjs_9546mainCode_9546GDbuttonObjects1Objects = Hashtable.newFrom({"button": gdjs.mainCode.GDbuttonObjects1});
gdjs.mainCode.eventsList0 = function(runtimeScene) {

{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.sceneJustBegins(runtimeScene);
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("_"), gdjs.mainCode.GD_9595Objects1);
gdjs.copyArray(runtimeScene.getObjects("button"), gdjs.mainCode.GDbuttonObjects1);
gdjs.copyArray(runtimeScene.getObjects("g"), gdjs.mainCode.GDgObjects1);
gdjs.copyArray(runtimeScene.getObjects("h1"), gdjs.mainCode.GDh1Objects1);
gdjs.copyArray(runtimeScene.getObjects("h2"), gdjs.mainCode.GDh2Objects1);
gdjs.copyArray(runtimeScene.getObjects("i"), gdjs.mainCode.GDiObjects1);
gdjs.copyArray(runtimeScene.getObjects("lm"), gdjs.mainCode.GDlmObjects1);
gdjs.copyArray(runtimeScene.getObjects("old_overly"), gdjs.mainCode.GDold_9595overlyObjects1);
gdjs.copyArray(runtimeScene.getObjects("t"), gdjs.mainCode.GDtObjects1);
{for(var i = 0, len = gdjs.mainCode.GDh1Objects1.length ;i < len;++i) {
    gdjs.mainCode.GDh1Objects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDh2Objects1.length ;i < len;++i) {
    gdjs.mainCode.GDh2Objects1[i].hide();
}
}{gdjs.evtTools.runtimeScene.resetTimer(runtimeScene, "tick");
}{for(var i = 0, len = gdjs.mainCode.GDold_9595overlyObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDold_9595overlyObjects1[i].play();
}
}{for(var i = 0, len = gdjs.mainCode.GD_9595Objects1.length ;i < len;++i) {
    gdjs.mainCode.GD_9595Objects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDgObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDgObjects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDtObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDtObjects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDiObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDiObjects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDbuttonObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDbuttonObjects1[i].hide();
}
}{for(var i = 0, len = gdjs.mainCode.GDlmObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDlmObjects1[i].hide();
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 2;
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("sc_intro"), gdjs.mainCode.GDsc_9595introObjects1);
{for(var i = 0, len = gdjs.mainCode.GDsc_9595introObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDsc_9595introObjects1[i].play();
}
}}

}


{

gdjs.copyArray(runtimeScene.getObjects("button"), gdjs.mainCode.GDbuttonObjects1);

let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.input.cursorOnObject(gdjs.mainCode.mapOfGDgdjs_9546mainCode_9546GDbuttonObjects1Objects, runtimeScene, true, false);
if (isConditionTrue_0) {
/* Reuse gdjs.mainCode.GDbuttonObjects1 */
gdjs.copyArray(runtimeScene.getObjects("lm"), gdjs.mainCode.GDlmObjects1);
{for(var i = 0, len = gdjs.mainCode.GDbuttonObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDbuttonObjects1[i].getBehavior("Animation").setAnimationIndex(1);
}
}{for(var i = 0, len = gdjs.mainCode.GDlmObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDlmObjects1[i].setColor("0;0;0");
}
}}

}


{

gdjs.copyArray(runtimeScene.getObjects("button"), gdjs.mainCode.GDbuttonObjects1);

let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.input.cursorOnObject(gdjs.mainCode.mapOfGDgdjs_9546mainCode_9546GDbuttonObjects1Objects, runtimeScene, true, true);
if (isConditionTrue_0) {
/* Reuse gdjs.mainCode.GDbuttonObjects1 */
gdjs.copyArray(runtimeScene.getObjects("lm"), gdjs.mainCode.GDlmObjects1);
{for(var i = 0, len = gdjs.mainCode.GDbuttonObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDbuttonObjects1[i].getBehavior("Animation").setAnimationIndex(0);
}
}{for(var i = 0, len = gdjs.mainCode.GDlmObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDlmObjects1[i].setColor("255;255;255");
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 12;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8171692);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("button"), gdjs.mainCode.GDbuttonObjects1);
gdjs.copyArray(runtimeScene.getObjects("lm"), gdjs.mainCode.GDlmObjects1);
{for(var i = 0, len = gdjs.mainCode.GDbuttonObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDbuttonObjects1[i].hide(false);
}
}{for(var i = 0, len = gdjs.mainCode.GDlmObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDlmObjects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 4;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(7541772);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("sc_intro"), gdjs.mainCode.GDsc_9595introObjects1);
{for(var i = 0, len = gdjs.mainCode.GDsc_9595introObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDsc_9595introObjects1[i].deleteFromScene(runtimeScene);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 5;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8159804);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("h1"), gdjs.mainCode.GDh1Objects1);
{for(var i = 0, len = gdjs.mainCode.GDh1Objects1.length ;i < len;++i) {
    gdjs.mainCode.GDh1Objects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 6;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8304452);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("_"), gdjs.mainCode.GD_9595Objects1);
{for(var i = 0, len = gdjs.mainCode.GD_9595Objects1.length ;i < len;++i) {
    gdjs.mainCode.GD_9595Objects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 6.2;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8609340);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("g"), gdjs.mainCode.GDgObjects1);
{for(var i = 0, len = gdjs.mainCode.GDgObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDgObjects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 6.4;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8607932);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("i"), gdjs.mainCode.GDiObjects1);
{for(var i = 0, len = gdjs.mainCode.GDiObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDiObjects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 6.6;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(8198052);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("t"), gdjs.mainCode.GDtObjects1);
{for(var i = 0, len = gdjs.mainCode.GDtObjects1.length ;i < len;++i) {
    gdjs.mainCode.GDtObjects1[i].hide(false);
}
}}

}


{


let isConditionTrue_0 = false;
isConditionTrue_0 = false;
isConditionTrue_0 = gdjs.evtTools.runtimeScene.getTimerElapsedTimeInSecondsOrNaN(runtimeScene, "tick") >= 8;
if (isConditionTrue_0) {
isConditionTrue_0 = false;
{isConditionTrue_0 = runtimeScene.getOnceTriggers().triggerOnce(7981412);
}
}
if (isConditionTrue_0) {
gdjs.copyArray(runtimeScene.getObjects("h2"), gdjs.mainCode.GDh2Objects1);
{for(var i = 0, len = gdjs.mainCode.GDh2Objects1.length ;i < len;++i) {
    gdjs.mainCode.GDh2Objects1[i].hide(false);
}
}}

}


};

gdjs.mainCode.func = function(runtimeScene) {
runtimeScene.getOnceTriggers().startNewFrame();

gdjs.mainCode.GDblack_9595bgObjects1.length = 0;
gdjs.mainCode.GDblack_9595bgObjects2.length = 0;
gdjs.mainCode.GDh1Objects1.length = 0;
gdjs.mainCode.GDh1Objects2.length = 0;
gdjs.mainCode.GDh2Objects1.length = 0;
gdjs.mainCode.GDh2Objects2.length = 0;
gdjs.mainCode.GDsc_9595introObjects1.length = 0;
gdjs.mainCode.GDsc_9595introObjects2.length = 0;
gdjs.mainCode.GDsc_9595logoObjects1.length = 0;
gdjs.mainCode.GDsc_9595logoObjects2.length = 0;
gdjs.mainCode.GDold_9595overlyObjects1.length = 0;
gdjs.mainCode.GDold_9595overlyObjects2.length = 0;
gdjs.mainCode.GD_9595Objects1.length = 0;
gdjs.mainCode.GD_9595Objects2.length = 0;
gdjs.mainCode.GDgObjects1.length = 0;
gdjs.mainCode.GDgObjects2.length = 0;
gdjs.mainCode.GDiObjects1.length = 0;
gdjs.mainCode.GDiObjects2.length = 0;
gdjs.mainCode.GDtObjects1.length = 0;
gdjs.mainCode.GDtObjects2.length = 0;
gdjs.mainCode.GDbuttonObjects1.length = 0;
gdjs.mainCode.GDbuttonObjects2.length = 0;
gdjs.mainCode.GDlmObjects1.length = 0;
gdjs.mainCode.GDlmObjects2.length = 0;

gdjs.mainCode.eventsList0(runtimeScene);

return;

}

gdjs['mainCode'] = gdjs.mainCode;

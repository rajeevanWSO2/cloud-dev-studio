/*
 * Copyright (c) 2014, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

var editorItemCounter = 0;
var currentId = null;
var count = 0;
var counter = 0;
var lastItem = null;
var dataString = null;
var curElement = null;
var id = null;
var curSourceElem = null;
var curTargetElem = null;
/**
*in pixels.. all the number values given here needs to be tested and altered for all browsers and scenarios..
*hence not finalised yet
**/
var TOP_LOC = 120;
var POPUP_HEIGHT = 400;
var POPUP_WIDTH =600;
var LEFT_OFFSET = 400;
var X_SPACE_BUFFER = 200;
var X_OFFSET = 250;

var newElemXLoc = 60;

var curXLoc = null;
var connectionList = null;
var elemSourceLocList = [];
var elemTargetLocList = [];
var elemSourceId = [];
var elemTargetId = [];
var elemSourceLocListIn = [];
var elemTargetLocListIn = [];
var elemSource = null;
var elemTarget = null;
var xSpace = 0; //in pixels.. needs to be tested and altered for all browsers and scenarios.. hence not finalised yet
var popupCount = 0;
var currentPopup = null;
var x2js = null;
var elemIsMiddle = false;
var DELETE_KEY_CONSTANT = 46;// 46 is the keycode returned on DELETE key press


$(document).ready(function () {
    x2js = new X2JS();
    registerTabChangeEvent();
    registerMouseAndKeyEvents();
    registerJsPlumbBind();
    jsplumbHandleDraggable();
    jsplumbHandleDroppable();
    connectionList = jsPlumb.getAllConnections();

});

//initiate jsplumb
function initJsPlumb(container) {
    jsPlumb.setContainer(container);
}

// data updating for mediator data
function setUpdatedDataCallBack(receivedData) {
    var strID = curElement.attr('id');
    var divMediator = document.getElementById(strID);
    $(divMediator).data('jsonConfig', receivedData);
    currentPopup.dialog("close");
}

//opening mediator data configuration dialog
function openMediatorConfigDialog(path, title) {
    if (popupCount == 0) {
        $(document.body).append('<div id="popupForMediatorData"></div>');
        var popupEl = $("#popupForMediatorData");
        popupEl.attr('id', "popupForMediatorData").load(path);//TODO
        popupEl.dialog({ autoOpen: false,
            bgiframe: true,
            height: POPUP_HEIGHT, //pop up widow height and width definitions
            width: POPUP_WIDTH,
            modal: false,
            draggable: true,
            resizable: true,
            position: 'center' });
        popupEl.dialog('option', 'title', title);
        currentPopup = popupEl;
        ++popupCount;
    }
    currentPopup.dialog("open");
}

function registerMouseAndKeyEvents() {
    $(document).mousemove(function (e) {// to get the cursor point to drop an icon
        curXLoc = e.pageX;
    });

    $(document).keydown(function (e) {
        if(e.keyCode == DELETE_KEY_CONSTANT){
        designViewDeleteKeyDown(e); //detecting the key down event for DELETE key press
        }
    });
}

//sourve view and design view tab changes
function registerTabChangeEvent() {
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var tabName = $(e.target).html();
        if (tabName == 'Source') {
            activateSourceView();
        } else {
            activateDesignView();
        }
    });
}

//jsplumb binding to enable jsplumb in javascript
function registerJsPlumbBind() {
    jsPlumb.bind("ready", function () {
        initJsPlumb($("#jsPlumbContainer"));//TODO move up
    });
}

function activateSourceView() {
    var sourceEditorTBox = $('#sourceEditorTextBox');
    sourceEditorTBox.val(serializeGrapicalViewAndGetText());
}

function activateDesignView() {
    var sourceEditorTextBox = $('#sourceEditorTextBox');
    deserilizaTextAndCreateDesign(sourceEditorTextBox.val());
}

function serializeGrapicalViewAndGetText() {
    var prevElement = null;
    var nextElement = null;
    var connectionList = jsPlumb.getAllConnections();
    var jObj = null;
    var xmlElement = null;
    var currentText = '<sequence name="sample_sequence">';

    for (var connection in connectionList) {
        if (connectionList.hasOwnProperty(connection)) {
            if (connectionList[connection].sourceId != null) {
                prevElement = document.getElementById(connectionList[connection].sourceId);
            }
            if (connectionList[connection].targetId != null) {
                nextElement = document.getElementById(connectionList[connection].targetId);
            }
        }

        jObj = $(prevElement).data('jsonConfig');
        //TODO remove console logs once finalized, used for testing
        console.log(prevElement);
        console.log('serializing ' + jObj);
        console.log(jObj);
        xmlElement = '\n' + x2js.json2xml_str(jObj);
        currentText = currentText + xmlElement;
    }

    jObj = $(nextElement).data('jsonConfig');
    xmlElement = '\n' + x2js.json2xml_str(jObj);
    currentText = currentText + xmlElement + '\n</sequence>';
    return currentText;
}


function deserilizaTextAndCreateDesign(text) {
    
    var jsPlumbContainer = $("#jsPlumbContainer");
    var sequenceObj = x2js.xml_str2json(text);
    var sequence = sequenceObj.sequence;
    var logArray = sequence.log;

    jsPlumbContainer.empty();
    var prevDivElement = null;
    var logArrayElem;
    for (logArrayElem in logArray) {
        if (logArray.hasOwnProperty(logArrayElem)) {
            console.log(logArrayElem);
            var currentDiv = addDiv(logArrayElem);
            if (prevDivElement != null) {
                connectDivs(prevDivElement, currentDiv);
                lastItem = currentDiv;
            }
            prevDivElement = currentDiv;
            }
    }
}


var filePath = "";
var fileContent = "";

function receiveMessage (evt) {
    var message =  evt.data;
    var type = message._type;

    if(type === 1){ 
        // initial editor open message or when select graphical editor tab
        filePath = message.filePath;
        fileContent=message.content;
        console.log(' trype 1 msg received from file :' + filePath + '          Content : ' + fileContent);
        deserilizaTextAndCreateDesign(fileContent)

    }else if (type === 2){ 
        // when press the save on codenvy ide or either on text editor chose it sends this msg to get the content
        var text = serializeGrapicalViewAndGetText();
        console.log(' trype 2 msg received, fileContent    : ' + text);
        sendSaveContentMessage(text);
    }

}

if (window.addEventListener) {
    // For standards-compliant web browsers
    window.addEventListener("message", receiveMessage, false);
}
else {
    window.attachEvent("onmessage", receiveMessage);
}

var sendSaveContentMessage = function(textContent) {
    console.log('saving file ' + filePath + '     textContent     ' + textContent);
    var msg = {'_type' : 3, 'content' : textContent, 'filePath':filePath };
    parent.postMessage(msg, '*');
}

var sendDirtyContentMessage = function() {
    console.log('making dirty true on file' + filePath);
    var msg = {'_type' : 4, 'dirty' : true, 'filePath':filePath };
    parent.postMessage(msg, '*');
}

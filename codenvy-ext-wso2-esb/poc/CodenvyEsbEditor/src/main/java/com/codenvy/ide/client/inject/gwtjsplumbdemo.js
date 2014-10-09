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


function gwtjsplumbdemo(prevElem,currElem) {

   jsPlumb.bind("ready", function() {
	   
   jsPlumb.connect({source:prevElem, target:currElem,
       anchors:["Right", "Left" ],
	     paintStyle: { strokeStyle: "#3366FF", lineWidth: 1 },
       connector: ["Flowchart", { curviness: 100}],
       connectorStyle: [{ lineWidth: 1, strokeStyle: "#3366FF" }],
       hoverPaintStyle: { strokeStyle: "#3366FF", lineWidth: 8 }
       });
   });
  
 }
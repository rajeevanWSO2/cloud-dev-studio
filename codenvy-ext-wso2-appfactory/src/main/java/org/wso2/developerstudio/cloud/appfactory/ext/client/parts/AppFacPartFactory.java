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
package org.wso2.developerstudio.cloud.appfactory.ext.client.parts;

import javax.validation.constraints.NotNull;

public interface AppFacPartFactory {
    /**
     * Create an instance of a part with a given title.
     *
     * @param title
     *         title for part
     * @return {@link AppFacPartPresenter}
     */
   
    AppFacPartPresenter create(@NotNull String title);
    AppFacPartPresenterConsole createName(@NotNull String title);
    
}
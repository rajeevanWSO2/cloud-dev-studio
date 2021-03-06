/*
* Copyright (c) 2015, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
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
package org.wso2.developerstudio.codenvy.ext.appfactory.shared.dto;

import org.eclipse.che.dto.shared.DTO;

/**
 * Keeps the possible error types that can occur in App Factory server component
 */
@DTO
public enum ErrorType {

    CONNECTION_FAILURE, AUTHENTICATION_FAILURE, NONE, INVALID_USER;

    @Override
    public String toString() {
        switch(this) {
            case CONNECTION_FAILURE: return "Connection Failure";
            case AUTHENTICATION_FAILURE: return "Authentication Failure";
            case INVALID_USER: return "Invalid User";
            case NONE: return "None";
            default: throw new IllegalArgumentException();
        }
    }

}

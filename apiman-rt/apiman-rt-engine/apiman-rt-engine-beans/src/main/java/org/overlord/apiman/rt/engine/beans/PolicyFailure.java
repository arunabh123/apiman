/*
 * Copyright 2014 JBoss Inc
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.overlord.apiman.rt.engine.beans;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * Models a policy failure.
 * 
 * @author Marc Savy <msavy@redhat.com>
 */
public class PolicyFailure implements Serializable {
    
    private static final long serialVersionUID = -4698896399383125062L;

    private PolicyFailureType type;
    private int failureCode;
    private String message;
    private Map<String, String> headers = new HashMap<String, String>();

    /**
     * Constructor.
     */
    public PolicyFailure() {
    }
    
    /**
     * Constructor.
     * @param type
     * @param failureCode
     * @param message
     */
    public PolicyFailure(PolicyFailureType type, int failureCode, String message) {
        this.type = type;
        this.failureCode = failureCode;
        this.message = message;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the failureCode
     */
    public int getFailureCode() {
        return failureCode;
    }

    /**
     * @param failureCode the failureCode to set
     */
    public void setFailureCode(int failureCode) {
        this.failureCode = failureCode;
    }

    /**
     * @return the type
     */
    public PolicyFailureType getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(PolicyFailureType type) {
        this.type = type;
    }

    /**
     * @return the headers
     */
    public Map<String, String> getHeaders() {
        return headers;
    }

    /**
     * @param headers the headers to set
     */
    public void setHeaders(Map<String, String> headers) {
        this.headers = headers;
    }
}
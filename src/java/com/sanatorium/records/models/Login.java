/*
 *  Copyright (c) 2019
 *  Erick Ogaro
 */

package com.sanatorium.records.models;

public class Login {

    String userID;
    String password;

    public String getUserID() {
        return userID;
    }

    public String getPassword() {
        return password;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

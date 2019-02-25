/*
 * Copyright (c) 2019
 * Erick Ogaro
 */

package com.sanatorium.records.models;

// Lab Model
public class Lab {

    // Lab report class
    public class Report {

        private String testType;
        private String testResults;

        // Constructor
        public Report() {
        }

        // Setter and Getter methods for each variable
        public String getTestType() {
            return testType;
        }

        public void setTestType(String testType) {
            this.testType = testType;
        }

        public String getResults() {
            return testResults;
        }

        public void setResults(String testResults) {
            this.testResults = testResults;
        }
    }
}

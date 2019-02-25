package com.sanatorium.records.models;

public class labBean {

    public boolean ready;
    private String testType;
    private String testResults;

    public String getResults() {
        return testResults;
    }

    public void setResults(String testResults) {
        this.testResults = testResults;
    }

    public String getTestType() {
        return testType;
    }

    public void setTestType(String testType) {
        this.testType = testType;
    }

    public boolean isReady() {
        return ready;
    }

    public void setReady(boolean ready) {
        this.ready = ready;
    }
}

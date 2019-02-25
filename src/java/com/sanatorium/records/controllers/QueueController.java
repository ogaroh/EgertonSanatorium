/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.controllers;

import com.sanatorium.records.models.PatientOnQueue;
import java.util.PriorityQueue;

/**
 *
 * @author Makali
 */
public class QueueController {
    //Normal Queue
    PriorityQueue<PatientOnQueue> patientsOnQueue = new PriorityQueue<>();
    
//    Emergency Queue
    PriorityQueue<PatientOnQueue> EmergencyQueue = new PriorityQueue<>();

//    Normal Queue logic
    public void addToQueue(PatientOnQueue patientOnQueue){
        patientsOnQueue.add(patientOnQueue);
    } 

    public void removeFromQueue(PatientOnQueue patientOnQueue){
        patientsOnQueue.remove(patientOnQueue);
    }

    public PatientOnQueue firstPatient(){
        return patientsOnQueue.peek();
    }

    public PriorityQueue<PatientOnQueue> getPatientQueue() {
        return patientsOnQueue;
    }
    
    //Emergency Queue logic    
    public void addToEmergencyQueue(PatientOnQueue patientOnQueue){
        EmergencyQueue.add(patientOnQueue);
    }
    
    public void removeFromEmergencyQueue(PatientOnQueue patientOnQueue){
        EmergencyQueue.remove(patientOnQueue);
    }
    
    public PatientOnQueue firstEmergencyPatient(){
        return EmergencyQueue.peek();
    }
    
    public PriorityQueue<PatientOnQueue> getEmergencyQueue() {
        return EmergencyQueue;
    }
    
}

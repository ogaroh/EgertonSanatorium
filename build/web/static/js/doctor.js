/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
'use strict';

window.onload = () => {
    var doc = document;
    var prognosis = doc.getElementById('prognosis'),
        tests = doc.getElementById('tests'),
        diagnosis = doc.getElementById('diagnosis'),
        prescription = doc.getElementById('prescription'),
        btnLab = doc.getElementById('btnLab'),
        btnPharmacy = doc.getElementById('btnPharmacy'),
        btnContainer = doc.getElementById('btn-container');

    btnLab.addEventListener('click', (event) => {
        event.preventDefault();

        prognosis.classList.remove('invisible');
        tests.classList.remove('invisible');

        btnContainer.classList.add('invisible');
        
    });

    btnPharmacy.addEventListener('click', (event) => {
        event.preventDefault();

        diagnosis.classList.remove('invisible');
        prescription.classList.remove('invisible');

        btnContainer.classList.add('invisible');
    });
}



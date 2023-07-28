import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

// Fungsi login diambil dari command.js
Given("{string} masuk ke siakad", (role) =>{
    cy.visit("gate/login")
    if(role == "Admin"){
        cy.login(0)
    }else if(role == "Dosen"){
        cy.login(2)
    }
})
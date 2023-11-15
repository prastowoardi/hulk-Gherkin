import {Given } from "@badeball/cypress-cucumber-preprocessor"

// Fungsi login diambil dari command.js
Given("{string} masuk ke siakad", (role) =>{
    cy.visit("gate/login")
    if (role == "Admin"){
        cy.login(0)
    } else if (role == "Super Administrator"){
        cy.login(1)
    } else if (role == "Dosen"){
        cy.login(2)
    } else if (role == "Asesor Akuntansi"){
        cy.login(4)
    } else if (role == "Asesor TI"){
        cy.login(6)
    } else if (role == "Admin Support Sevima"){
        cy.login(5)
    }
})
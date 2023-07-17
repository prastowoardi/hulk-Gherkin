import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} menuju ke halaman {string}", (user,url) => {
    cy.visit(url)
})
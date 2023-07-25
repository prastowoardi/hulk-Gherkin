import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

Given("User login siakad", () => {
    cy.visit("gate/login")
})

When('User memasukkan username dan password', () => {
   cy.login(2).debug()
})

Then('User masuk ke dalam sistem', () => {
    cy.url().should('eq', 'http://localhost/siacloud/gate/menu')
})
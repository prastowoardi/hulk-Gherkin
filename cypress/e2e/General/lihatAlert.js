import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} melihat alert berhasil", (user) => {
    cy.get(".alert").should('include.text', 'berhasil')
})
When("{string} melihat modal dengan pesan {string}", (user,alert) => {
    cy.get("#modal-konfirmasi").contains(alert)
})
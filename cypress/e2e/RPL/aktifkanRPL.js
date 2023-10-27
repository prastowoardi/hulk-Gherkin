import { When } from "@badeball/cypress-cucumber-preprocessor"

When ('Admin mengaktifkan servis RPL', () => {
    cy.get('.table').contains('rpl_active')
        .nextAll().should('have.length',3).find('.btn-primary').click()
    cy.get('#u_valuesetting').select('Aktif')
    cy.get(':nth-child(53) > :nth-child(4) > .btn-success').click()
})

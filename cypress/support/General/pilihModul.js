Cypress.Commands.add('modulsdm', () => {
    cy
        .get('.hr > .inner').click()
        .get('#hr').contains('Administrator Perguruan Tinggi').should('be.visible').click()
})

Cypress.Commands.add("moduladminaplikasi", () => {
    cy
        .get(".admin > .inner").click()
        .get("#admin").contains("Super Admin").should('be.visible').click()
})
  
Cypress.Commands.add("modulakademik", () => {
    cy
        .get(".siakad > .inner").click()
        .get("#siakad").contains("Super Admin").should('be.visible').click()
})

Cypress.Commands.add("modulkeuangan", () => {
    cy
        .get(".keuangan > .inner").click()
        .get("#keuangan > .content > .role_box").click()
})

Cypress.Commands.add("modulmbkm", () => {
    cy
        .get('.mbkm > .inner').click()
        .get("#mbkm").contains("Super Admin").should('be.visible').click()
})
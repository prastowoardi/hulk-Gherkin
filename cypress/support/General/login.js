Cypress.Commands.add('login', (user) => {
    // cy.log(user)
    cy.contains('Masuk dan Verifikasi').should('be.visible')
    cy.fixture('../fixtures/General/user').then((userdata) => {
        cy.get('#email').type(userdata[user].username)
        cy.get('#password').type(userdata[user].password)
    })
    cy.get('.btn-login').click()
})
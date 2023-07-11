Cypress.Commands.add('login', (user) => {
    cy.contains('Masuk dengan akun Anda').should('be.visible')
    cy.fixture('../fixtures/General/user').then((userdata) => {
        cy.get('#userid').type(userdata[user].username)
        cy.get('#password').type(userdata[user].password)
    })
    cy.get('.btn').click()
})
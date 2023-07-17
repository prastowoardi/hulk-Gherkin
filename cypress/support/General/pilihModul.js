Cypress.Commands.add('modulsdm', (user) => {
    cy.get('.hr > .inner').click()
    cy.fixture('../fixtures/General/user').then((data) => {
        data.forEach((role) => {
            cy.log(data)
            if(user == role.id)
            cy.get('#hr').contains(role.role)
                .should('be.visible', {timeout : 1000}).click()
        })
    }) 
})
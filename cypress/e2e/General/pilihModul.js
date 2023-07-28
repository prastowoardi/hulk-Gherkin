import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When ('{string} masuk ke modul {string}', (user,modul) => {
    if(modul == "SDM" && user == "Admin"){
        cy.get('.hr > .inner').click()
        cy.get('#hr').contains("Administrator Perguruan Tinggi")
            .should('be.visible', {timeout : 1000}).click()
    }else if(modul == "SDM" && user == "Dosen"){
        cy.get('.hr > .inner').click()
        cy.get('#hr').contains("Dosen")
            .should('be.visible', {timeout : 1000}).click()
    }
})
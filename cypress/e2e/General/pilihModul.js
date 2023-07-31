import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

const moduleUserActions = {
    "SDM_Admin": () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Administrator Perguruan Tinggi")
        .should('be.visible', { timeout: 1000 }).click()
    },
    "SDM_Dosen": () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Dosen")
        .should('be.visible', { timeout: 1000 }).click()
    },
    // Tambah modul lain dan kombinasi user disini
  }
  
  When('{string} masuk ke modul {string}', (user, modul) => {
    const action = moduleUserActions[`${modul}_${user}`]
    if (action) {
      action()
    } else {
      // Handle the case when the combination of modul and user doesn't match any entry in the moduleUserActions object
      cy.log("Modul / Role tidak ditemukan")
    }
  })
  
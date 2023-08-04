import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

const moduleUserActions = {
  // Tambah modul lain dan kombinasi user disini
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
    "PMB_Admin": () => {
      cy.get(".spmb").click(); //pilih modul pmb
      cy.get('#spmb').contains('Administrator Perguruan Tinggi')
        .should('be.visible', { timeout: 1000 }).click()
    },
    "Siakad_Admin": () => {
      cy.get(".siakad > .inner").click();
      cy.get("#siakad").contains("Administrator Perguruan Tinggi")
      .should('be.visible', { timeout: 1000 }).click()
    },
    "Siakad_Dosen": () => {
      cy.get(".siakad > .inner").click();
      cy.get("#siakad").contains("Dosen")
      .should('be.visible', { timeout: 1000 }).click()
    },
    "Keuangan_Admin": () => {
      cy.get(".keuangan > .inner").click();
      cy.get("#keuangan").contains("Administrator Perguruan Tinggi")
      .should('be.visible', { timeout: 1000 }).click()
    }
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
  
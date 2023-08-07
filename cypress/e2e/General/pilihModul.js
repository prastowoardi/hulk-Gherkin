import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

const moduleActions = {
  // Tambah modul lain dan kombinasi user disini
  SDM: {
    Admin: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    },
    Dosen: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Dosen").should('be.visible', { timeout: 1000 }).click()
    }
  },
  PMB: {
    Admin: () => {
      cy.get(".spmb").click()
      cy.get('#spmb').contains('Administrator Perguruan Tinggi').should('be.visible', { timeout: 1000 }).click()
    }
  },
  Siakad: {
    Admin: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    },
    Dosen: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Dosen").should('be.visible', { timeout: 1000 }).click()
    }
  },
  Keuangan: {
    Admin: () => {
      cy.get(".keuangan > .inner").click()
      cy.get("#keuangan").contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    }
  }
}

When('{string} masuk ke modul {string}', (user, modul) => {
  const action = moduleActions[modul]?.[user]
  if (action) {
    action()
  } else {
    cy.log("Modul / Role tidak ditemukan")
  }
})
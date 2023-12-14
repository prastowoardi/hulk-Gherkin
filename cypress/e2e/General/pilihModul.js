import { When } from "@badeball/cypress-cucumber-preprocessor"

const moduleActions = {
  // Tambah modul lain dan kombinasi user disini
  SDM: {
    SuperAdmin: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Super Administrator").should('be.visible', { timeout: 1000 }).click()
    },
    Admin: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    },
    Dosen: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Dosen").should('be.visible', { timeout: 1000 }).click()
    },
    AdminSupport: () => {
      cy.get('.hr > .inner').click()
      cy.get('#hr').contains("Admin Support Sevima").should('be.visible', { timeout: 1000 }).click()
    }
  },
  PMB: {
    SuperAdmin: () => {
      cy.get(".spmb").click()
      cy.get('#spmb').contains("Super Administrator").should('be.visible', { timeout: 1000 }).click()
    },
    Admin: () => {
      cy.get(".spmb").click()
      cy.get('#spmb').contains('Administrator Perguruan Tinggi').should('be.visible', { timeout: 1000 }).click()
    },
    Asesor: () => {
      cy.get(".spmb").click()
      cy.get('#spmb').contains('Asesor RPL').should('be.visible', { timeout: 1000 }).click()
    },
    AdminSupport: () => {
      cy.get(".spmb").click()
      cy.get('#spmb').contains('Admin Support Sevima').should('be.visible', { timeout: 1000 }).click()
    }
  },
  Siakad: {
    SuperAdmin: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Super Administrator").should('be.visible', { timeout: 1000 }).click()
    },
    Admin: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    },
    Dosen: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Dosen").should('be.visible', { timeout: 1000 }).click()
    },
    AdminSupport: () => {
      cy.get(".siakad > .inner").click()
      cy.get("#siakad").contains("Admin Support Sevima").should('be.visible', { timeout: 1000 }).click()
    }
  },
  Keuangan: {
    SuperAdmin: () => {
      cy.get(".keuangan > .inner").click()
      cy.get("#keuangan").contains("Super Administrator").should('be.visible', { timeout: 1000 }).click()
    },
    Admin: () => {
      cy.get(".keuangan > .inner").click()
      cy.get("#keuangan").contains("Administrator Perguruan Tinggi").should('be.visible', { timeout: 1000 }).click()
    },
    AdminSupport: () => {
      cy.get(".keuangan > .inner").click()
      cy.get("#keuangan").contains("Admin Support Sevima").should('be.visible', { timeout: 1000 }).click()
    }
  },
  Aplikasi: {
    SuperAdmin: () => {
      cy.get(".admin > .inner").click()
      cy.get("#admin").contains("Super Administrator").should('be.visible', { timeout: 1000 }).click()
    },
    AdminSupport: () => {
      cy.get(".admin > .inner").click()
      cy.get("#admin").contains("Admin Support Sevima").should('be.visible', { timeout: 1000 }).click()
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
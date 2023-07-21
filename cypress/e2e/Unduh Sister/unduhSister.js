import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} klik yakin lalu melihat modal dan alert", (user) => {
    // cy.get('.modal-footer > .btn-primary').click()
    cy.get('.callout > .row > .col-md-3').contains('Data Riwayat').next()
      .invoke('text').then((riwayat) => {
        cy.log(riwayat);

          return cy.get('.callout > .row > .col-md-3').contains('Data Sister').next()
            .invoke('text').then((sister) => {
              cy.log(sister);
      cy.get('.modal-footer > .btn-primary').click()
              // You can now use riwayat inside the if-else statement
              if (riwayat == sister) {
                // Do something if riwayat has a specific value
                cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang diunduh')
              } else {
                // Do something else if riwayat has a different value
                cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil mengunduh')
              }
          })
      })
})
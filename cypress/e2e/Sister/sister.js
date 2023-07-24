import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} menunggu proses {string}", (user,action) => {
    // cy.get('.modal-footer > .btn-primary').click()
    if(action == "Unduh"){
      cy.get('.callout > .row > .col-md-3').contains('Data Riwayat').next()
      .invoke('text').then((riwayat) => {
        cy.log(riwayat);

          return cy.get('.callout > .row > .col-md-3').contains('Data Sister').next()
            .invoke('text').then((sister) => {
              cy.log(sister);
              cy.get('.modal-footer > .btn-primary').click()
                // You can now use riwayat inside the if-else statement
                if (riwayat == '0' && sister == '0') {
                  cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil mengunduh')
                } else if (riwayat > sister) {
                  cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang diunduh')
                } else if (riwayat < sister){
                  cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil mengunduh')
                } else if (riwayat == sister){
                  cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang diunduh')
                } 
          })
      })
    }else {
      cy.get('.callout > .row > .col-md-3').contains('Data Baru').next()
      .invoke('text').then((baru) => {
        cy.log(baru);

          return cy.get('.callout > .row > .col-md-3').contains('Data Akan Diubah').next()
            .invoke('text').then((ubah) => {
              cy.log(ubah);
              
              return cy.get('.callout > .row > .col-md-3').contains('Data Akan Dihapus').next()
                .invoke('text').then((hapus) => {
                  cy.log(hapus);
                    // You can now use riwayat inside the if-else statement
                    if (baru != '0' && ubah != '0' && hapus != '0') {
                      cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil')
                    } else {
                      cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang disinkronisasi')
                    }
              })
          })
      })
    }
})
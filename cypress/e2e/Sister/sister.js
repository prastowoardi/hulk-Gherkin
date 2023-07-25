import { When, Then } from "@badeball/cypress-cucumber-preprocessor"
let splitText
import moment from 'moment'
const currentDate = new Date()

//Menentukan alert
When("{string} menunggu proses {string}", (user,action) => {
    
    if(action == "Unduh"){
      cy.get('.callout > .row > .col-md-3').contains('Data Riwayat').next()
      .invoke('text').then((riwayat) => {
        cy.log(riwayat)

          return cy.get('.callout > .row > .col-md-3').contains('Data Sister').next()
            .invoke('text').then((sister) => {
              cy.log(sister)
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
    }else if (action == 'Kirim') {
      cy.get('.callout > .row > .col-md-3').contains('Data Baru').next()
      .invoke('text').then((baru) => {
        cy.log(baru)

          return cy.get('.callout > .row > .col-md-3').contains('Data Akan Diubah').next()
            .invoke('text').then((ubah) => {
              cy.log(ubah)
              
              return cy.get('.callout > .row > .col-md-3').contains('Data Akan Dihapus').next()
                .invoke('text').then((hapus) => {
                  cy.log(hapus)
                    // You can now use riwayat inside the if-else statement
                    if (baru != '0' || ubah != '0' || hapus != '0') {
                      cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil sinkronisasi')
                        .invoke('text').then((data) => {
                          splitText = data.replace(/(.[(/)])/g," ").trim().split(' ')[6]
                          cy.log(splitText)
                      }).as('jumlah')
                    } else {
                      cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang disinkronisasi')
                        .invoke('text').then((data) => {
                            cy.log(data)
                      }).as('kosong')
                    }
              })
          })
      })
    }
})

// Ambil jumlah data berhasil
When("{string} melihat jumlah data yang di {string}", (user,action) => {
    if(action == "Kirim Data"){
      cy.get('@jumlah').then(() => {
        cy.log(splitText)
      })
    }else if(action == "Kirim"){
      cy.get('@kosong').then(() => {
        cy.log('Tidak ada data yang di kirim ke sister')
      })
    }
})

//Membandingkan dengan log
When("{string} melihat jumlah data berhasil",(user) => {
  const currentDate = moment().format('DD MMM YYYY')
  cy.log(currentDate)
  cy.get('.table > tbody').children().contains(currentDate)
    .next().next().invoke('text').then((value) => {
      cy.get('@jumlah').then(() => {
          cy.log(splitText)
          if(splitText == value){
            cy.log('Jumlah yang berhasil dikirim : '+splitText)
          }else{
            cy.log('JUMLAH DATA BERHASIL TIDAK SAMA. SILAHKAN CEK DETAIL LOG')
          }
      })
    })
})
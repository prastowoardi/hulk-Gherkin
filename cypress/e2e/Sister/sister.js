import { When, Then } from "@badeball/cypress-cucumber-preprocessor"
let splitText
import moment from 'moment'
const englishDate = moment().format('D MMMM YYYY')

// Menampung nama bulan yang akan di convert
const englishToIndonesianMonth = {
  'January': 'Januari',
  'February': 'Februari',
  'March': 'Maret',
  'April': 'April',
  'May': 'Mei',
  'June': 'Juni',
  'July': 'Juli',
  'August': 'Agustus',
  'September': 'September',
  'October': 'Oktober',
  'November': 'November',
  'December': 'Desember',
}
// Ubah nama bulan dari english ke indonesia
const convertToIndonesianDate = (englishDate) => {
  const [day, month, year] = englishDate.split(' ') // split menjadi array dengan pemisah spasi
  const indonesianMonth = englishToIndonesianMonth[month].substring(0,3) // Ambil 3 karakter awal (bisa pake slice(0,3) juga)
  return `${day} ${indonesianMonth} ${year}`
}

const indonesianDate = convertToIndonesianDate(englishDate)

// Menentukan alert dan membuat alias untuk ambil jumlah data berhasil
When("{string} menunggu proses {string}", (user,action) => {
    // Chainable & alias 
    if(action == "Unduh"){
      cy.get('.callout > .row > .col-md-3').contains('Data Riwayat').next()
      .invoke('text').then((riwayat) => {
        cy.log(riwayat)

          return cy.get('.callout > .row > .col-md-3').contains('Data Sister').next()
            .invoke('text').then((sister) => {
              cy.log(sister)
              cy.get('.modal-footer > .btn-primary').click()
                // You can now use riwayat inside the if-else statement
                // Membuat Alias
                if (riwayat == '0' && sister == '0') {
                  // Split text dengan trim
                  cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil mengunduh')
                    .invoke('text').then((data) => {
                      splitText = data.replace(/(.[(/)])/g," ").trim().split(' ')[6] // Split text dengan ambil aray ke-x dari hasil split 
                      cy.log(splitText)
                  }).as('jumlah')
                } else if (riwayat > sister) {
                  cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang diunduh')
                    .invoke('text').then((data) => {
                        cy.log(data)
                  }).as('kosong')
                } else if (riwayat < sister){
                  cy.get('.alert-v1').should('include.text', 'Yeay! Selamat Anda telah berhasil mengunduh')
                    .invoke('text').then((data) => {
                      splitText = data.replace(/(.[(/)])/g," ").trim().split(' ')[6] // Split text dengan ambil aray ke-x dari hasil split 
                      cy.log(splitText)
                  }).as('jumlah')
                } else if (riwayat == sister){
                  cy.get('.alert-v1').should('include.text', 'Ups! Tidak ada data yang diunduh')
                    .invoke('text').then((data) => {
                        cy.log(data)
                  }).as('kosong')
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
                          splitText = data.replace(/(.[(/)])/g," ").trim().split(' ')[6] // Split text dengan ambil aray ke-x dari hasil split 
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

// Ambil jumlah data berhasil dengan alias yang sudah dibuat
When("{string} melihat jumlah data yang di {string}", (user,action) => {
    if (action == "Kirim Data" || action == "Unduh"){
      cy.get('@jumlah').then(() => {
        cy.log(splitText)
      })
    } else if(action == "Kirim" || action == "Unduh Data"){
      cy.get('@kosong').then(() => {
        if (action == "Unduh Data"){
          cy.log('Tidak ada data yang di unduh')
        } else {
          cy.log('Tidak ada data yang di kirim ke sister')
        }
      })
    }
})

//Membandingkan jumlah data berhasil dengan log
When("{string} melihat jumlah data berhasil {string}",(user,action) => {
  cy.log(indonesianDate)
  cy.get('.table > tbody').children().contains(indonesianDate)
    .next().next().invoke('text').then((value) => {
      cy.get('@jumlah').then(() => {
          cy.log(splitText)
          if (splitText == value){
            if (action == "Kirim"){
              cy.log('Jumlah yang berhasil dikirim : '+splitText)
            } else{
              cy.log('Jumlah yang berhasil diunduh : '+splitText)
            }
          } else {
            cy.log('-- JUMLAH DATA BERHASIL TIDAK SAMA. SILAHKAN CEK DETAIL LOG --')
          }
      })
    })
})
import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("Asesor berada pada halaman seleksi RPL", () => {
    cy.url().should('eq', 'http://localhost/siacloud/spmb/seleksi_rpl')
})

When ("User melihat statistik pendaftar", () => {
    cy.get('.statistik').invoke('text').then((text) => {
        cy.log(text)
    })
})

When ("Asesor melakukan penilaian RPL pendaftar {string}", (namaPendaftar) => {
    cy.get("#sub-peminat-penilaian_rpl").click()
    cy.get('#sub-peminat-penilaian_rpl > h4 > .badge').invoke('text').then((text) => {
        cy.log("Pendaftar yang perlu dinilai: " + text)
    })

    cy.get('#search-input').type(namaPendaftar + '{enter}')

    // Masuk ke detail pendaftar untuk memberikan nilai
    cy.get('.col-sm-12').contains(namaPendaftar).parent().parent().next().next().next().next().children().click()
    
    // Memberikan asessmen RPL
    cy.get('#form_list > div > div > div > div.card-header > div:nth-child(5) > div.col-md-7 > div > div > table:nth-child(2)').find('tr').then(($rows) => {
        const numRows = $rows.slice(1).length
        cy.log(`Jumlah mata kuliah yang harus dinilai: ${numRows}`)

        // Daftar nilai yang diinginkan
        const nilai = ['A', 'B', 'C', 'D', 'E']

        $rows.each((index, $row) => {
            // Menghasilkan indeks acak antara 0 hingga 4 (indeks array)
            const indeksAcak = Math.floor(Math.random() * nilai.length)

            // Menggunakan indeks acak untuk memilih nilai acak dari array
            const nilaiAcak = nilai[indeksAcak]

            // Di dalam setiap baris, cari elemen select dengan atribut 'name' yang sesuai
            const nameAttribute = Cypress.$($row).find('.form-select.form-select-rpl.nangka').prop('name')
            if (nameAttribute) {
              // Menggunakan ekspresi reguler untuk mengambil angka dari atribut name
              const matches = nameAttribute.match(/nangka_(\d+)/)
              if (matches && matches.length > 1) {
                const angka = matches[1] // Mengambil angka yang cocok
                // Memilih nilai pada select yang sesuai
                cy.get(`select[name^="nangka_${angka}"]`).select(nilaiAcak)
              }
            } else {
              // cy.log('element: ' +nameAttribute)
              cy.log('Atribut name tidak ditemukan.')
            }
          })

          // Melihat mata kuliah yang sudah di nilai
          cy.get('#info-jumlah').invoke('text').then((text) => {
            const arrayText = text.split(' ')
            if (text.length > 5 ) {
              cy.log(text)
            } else {
              cy.log("Mata kuliah yang sudah dinilai: " + arrayText[7])
            }
          })
    })
})

When ('Asesor {string} nilai pendaftar', (action) => {
  if (action == "menyimpan") {
      cy.get('#btn-simpan').click()
  } else if (action == "simpan dan rekomendasi") {
      cy.get('#btn-act').click()
      cy.get('#modal-accept > .modal-dialog > .modal-content').within(() => {
          cy.get('#btn-save-lock').click()
      })
  }
})

When ("Asesor kembali ke halaman list dan melihat status pendaftar {string}", (namaPendaftar) => {
  cy.get('#btn-back').click()
  cy.get('#search-input').clear().type(namaPendaftar + '{enter}')

  // Masuk ke detail pendaftar untuk memberikan nilai
  cy.get('.col-sm-12').contains(namaPendaftar).parent().parent().next().next().next().children().invoke('text').then((text) => {
    cy.log('Status penilaian pendaftar: ' + text)
  })
    
})
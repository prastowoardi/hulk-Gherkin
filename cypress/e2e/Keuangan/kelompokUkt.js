import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("Admin klik tombol {string}", (buttonName) => {
    const buttonSelectors = {
        "Tambah": "#wrap-button > .btn:contains('Tambah')",
        "iSimpan": ".btn-success[data-original-title='Simpan']"
    }

    const selector = buttonSelectors[buttonName]
    if (selector) {
        cy.get(selector).click()
    } else {
        cy.log("Tombol " + buttonName + " tidak ditemukan / ID tombol multiple !")
    }
})

When("Admin melihat alert {string}", (message) => {
    if (message == "Berhasil"){
        cy.get('.alert').contains("Penambahan data Kelompok UKT berhasil")
    } else if (message == "Hapus"){
        cy.get('.alert').contains("Penghapusan data Kelompok UKT berhasil")
    } else {
        cy.log("Penambahan data Gagal !")
    }
})

When("Admin melihat data ada di list ukt", () => {
    cy.get('.table').contains('UKT 4')
    cy.log("Data ada di list kelompok UKT !")
})

When("Admin menghapus data {string}", (uktName) => {
    cy.get('.table').contains(uktName).then(($value) => {
        cy.wrap($value).nextUntil('.btn-danger') // Ganti '.btn-danger' dengan element yang sesuai
        .each(($value, index) => {
            if (index < 2) {
              // Lakukan tindakan pada dua elemen pertama, dapat menyesuaikan kondisi sesuai kebutuhan
              cy.wrap($value).click()
            }
          });
    })
    // cy.log("Data ada di list kelompok UKT !")
})

When("Admin mengisi field {string} dengan {string}", (fieldName,fieldValue) => {
    if (fieldName == "Kode"){
        cy.get('#i_idkelompokukt').type(fieldValue)
    } else if (fieldName == "Nama"){
        cy.get('#i_namakelompokukt').type(fieldValue)
    } else if (fieldName == "KIP Kuliah"){
        if (fieldValue == "1"){
            cy.get('.iCheck-helper').click()
        }else {
            cy.get('.iCheck-helper')
        }
    }
})
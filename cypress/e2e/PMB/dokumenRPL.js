import { When } from "@badeball/cypress-cucumber-preprocessor"

const input = {
    "kode dokumen": "#i_kodedokumenrpl",
    "nama dokumen": "#i_namadokumenrpl"
}

When ("Admin isi {string} dengan {string}", (fieldName,fieldValue) => {
    cy.get(input[fieldName]).type(fieldValue)
})

const edit = {
    "kode dokumen": "#u_kodedokumenrpl",
    "nama dokumen": "#u_namadokumenrpl"
}

When ("Admin ubah isi {string} dengan {string}", (fieldName,fieldValue) => {
    cy.get(edit[fieldName]).clear().type(fieldValue)
})

const button= {
    "simpan": ":nth-child(3) > .btn-success > .fa",
    "simpan edit": ":nth-child(3) > .btn-success[data-id='8']",
    "hapus": ":nth-child(3) > .btn-danger > .fa"
}

When ("Admin {string} data", (action) => {
    cy.get(button[action]).click()
})

const alert = {
    "berhasil tambah": ".alert:contains('Penambahan data Dokumen RPL berhasil')",
    "berhasil edit": ".alert:contains('Pengubahan data Dokumen RPL berhasil')",
    "hapus berhasil": ".alert:contains('Penghapusan data Dokumen RPL berhasil')",
    "duplikat": ".alert:contains('')"
}

When ("Admin melihat informasi {string}", (alertName) => {
    cy.get(alert[alertName])
})

// Data spesial
const specialDataNames = ["Ijazah", "Transkrip", "Silabus"]

When ("Admin mencari data {string} lalu klik {string}", (dataName, action) => {
    if (action === "edit") {
        cy.get('.table').contains(dataName).parent().find('.btn-warning').click()
    } else if (action === "hapus" && specialDataNames.includes(dataName)) { 
        cy.get('.table').contains(dataName).parent().find('.btn-danger').should('be.hidden')
        cy.log('Data tidak bisa dihapus !')
    } else {
        cy.get('.table').contains(dataName).parent().find('.btn-danger').click()
    }
})

When ("Cek komponen {string} pada data", (fieldName) => {
    if (input[fieldName]) {
        cy.get(input[fieldName]).should(($input) => {
            if ($input.is(':disabled')) {
                cy.log('Field disabled')
            }
        })  
    }          
})
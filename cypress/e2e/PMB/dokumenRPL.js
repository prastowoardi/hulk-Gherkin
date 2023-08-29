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
    "simpan edit": ":nth-child(3) > .btn-success[data-id='8']"
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

When ("Admin melihat informasi {string}", (alertMessage) => {
    cy.get(alert[alertMessage])
})

When ("Admin mencari data {string} lalu klik edit", (dataName) => {
    cy.get('.table').contains(dataName).parent().find('.btn-warning').click()
})
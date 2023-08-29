import { When } from "@badeball/cypress-cucumber-preprocessor"

const input = {
    "kode dokumen": "#i_kodedokumenrpl",
    "nama dokumen": "#i_namadokumenrpl"
}

const button= {
    "simpan": ":nth-child(3) > .btn-success > .fa"
}

When ("Admin isi {string} dengan {string}", (fieldName,fieldValue) => {
    if (input[fieldName]) {
        cy.get(input[fieldName]).type(fieldValue)
    } 
})

When ("Admin {string} data", (action) => {
    cy.get(button[action]).click()
})

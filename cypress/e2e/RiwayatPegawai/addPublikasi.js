import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} mengisi field Jenis Publikasi dengan {string}", (user,fieldValue) => {
    cy.get("#select2-idjenispublikasi-container").type(fieldValue+'{enter}')
})
When("{string} mengisi field Judul dengan {string}", (user,fieldValue) => {
    cy.get("#judul").type(fieldValue)
})
When("{string} mengisi field Tanggal Terbit dengan {string}", (user,fieldValue) => {
    cy.get("#tglterbit").type(fieldValue)
})
When("{string} mengisi field Kategori Kegiatan dengan {string}", (user,fieldValue) => {
    cy.get("#select2-idrubrikkegiatan0-container").type(fieldValue+'{enter}')
})
When("{string} mengisi field Peran dengan {string}", (user,fieldValue) => {
    cy.get('[id="peran[0]"]').select(fieldValue)
})
When("{string} mengisi field Corresponding dengan {string}", (user,fieldValue) => {
    if(fieldValue == '1'){
        cy.get('[id="corresponding[0]"]').check()
    }else if(fieldValue == '0'){

    }
})
When("{string} mengisi field Status Pengajuan dengan {string}", (user,fieldValue) => {
    cy.get('#select2-status-container').type(fieldValue+'{enter}')
})
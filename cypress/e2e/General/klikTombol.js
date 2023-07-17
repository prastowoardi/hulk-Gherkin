import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} klik tombol Tambah", (user) => {
    cy.get(".btn").contains("Tambah Baru").click()
})
When("{string} klik tombol Simpan", (user) => {
    cy.get('.btn-success').contains("Simpan").click()
})
When("{string} klik tombol Ya, Yakin", (user) => {
    cy.get('.modal-footer > .btn-primary').click()
})
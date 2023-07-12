import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

Given('User Login Sebagai {string}',(userRole) => {
    cy.visit("gate/login")
    cy.login(0)
    cy.modulsdm()
    // cy
    //     .get('.hr > .inner').click()
    //     .get('#hr').contains('Administrator Perguruan Tinggi').should('be.visible').click()
})
When('Admin akses halaman {string}',(url) => {
    cy.visit(url)
})

When('Admin klik tombol SISTER',() => {
    cy.get('.btn > .caret').click()
})
When('Admin klik tombol Unduh Data',() => {
    cy.get('.dropdown-menu > :nth-child(1) > .text-left')
        .should('include.text', 'Unduh').click()
})
When('Admin melihat modal konfirmasi',() => {
    cy.get('#modal-konfirmasi > .modal-header').contains('Proses mengunduh data akan berlangsung beberapa saat')
})
When('Admin klik tombol Ya, Yakin',() => {
    cy.get('.btn-primary').contains('Ya, Yakin').click()
})

Then('Admin melihat alert unduh riwayat {string}',(menu) => {
    cy.get('.alert-v1')
        .invoke('text').then((data) => {
            let trimSplit = data.replace(/(.[(/)])/g," ").trim().split(' ')[6]
            cy.log(trimSplit)
        })
})
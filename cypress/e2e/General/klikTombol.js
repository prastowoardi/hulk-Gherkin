import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} klik tombol {string}", (user,buttonName) => {
    if(buttonName == "Tambah"){
        cy.get(".btn").contains("Tambah Baru").click()
    }else if(buttonName == "Simpan"){
        cy.get('.btn-success').contains("Simpan").click()
    }else if(buttonName == "Ya, Yakin"){
        cy.get('.modal-footer > .btn-primary').click()
    }else if(buttonName == "Sister"){
        cy.get('.btn').contains("Sister").click()
    }else if(buttonName == "Unduh Data"){
        cy.get('.dropdown-menu').contains("Unduh Data").click()
    }else if(buttonName == "Unduh"){
        cy.get('.btn').contains("Unduh").click()
    }else if(buttonName == "Lihat Log"){
        cy.get('.btn').contains("Lihat Log").click()
        cy.on('window:before:load', (win) => {
            cy.stub(win, 'open').callsFake((url) => {
                return window.open.wrappedMethod.call(win, url, '_self');
            }).as('open')
        })
        cy.url().should('eq', 'http://localhost/siacloud/hr/list_logsister')
    }
})
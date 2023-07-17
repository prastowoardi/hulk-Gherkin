import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} melihat alert {string}", (user,alert) => {
    if(alert == "Berhasil"){
        cy.get(".alert").should('include.text', 'berhasil')
    }else if(alert == "Unduh"){
        cy.get('.alert-v1').should('include.text', 'unduh')
    }
    
})
When("{string} melihat modal dengan pesan {string}", (user,alert) => {
    cy.get("#modal-konfirmasi").contains(alert)
})

When("{string} melihat modal {string}", (user,modal) => {
    if(modal == "Konfirmasi"){
        cy.get('#modal-konfirmasi')
    }else if(modal == "Progress"){
        cy.get('#modal-overview').contains('Aktivitas Mengunduh Riwayat')
    }
})
import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} melihat alert {string}", (user,alert) => {
    if(alert == "Berhasil"){
        cy.get(".alert").should('include.text', 'berhasil')
    }else if(alert == "Unduh"){
        cy.get('.alert-v1').should('include.text', 'unduh')
    }else if(alert == "sk baru"){
        cy.get(".alert").contains('Penambahan data Dokumen Internal berhasil')
    }
    
})
When("{string} melihat modal dengan pesan {string}", (user,alert) => {
    cy.get("#modal-konfirmasi").contains(alert)
})

When("{string} melihat modal {string}", (user,modal) => {
    switch (modal) {
        case "Konfirmasi":
            cy.get('#modal-konfirmasi')
            break
        case "Progress":
            cy.get('#modal-overview > .modal-dialog > .modal-content')
                .contains('Aktivitas Mengunduh Riwayat')
            break
    }
})
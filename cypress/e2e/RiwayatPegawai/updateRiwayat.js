import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("Sudah ada data riwayat {string} yang diubah", (menu) => {
    cy.get(".table").find(".btn").click()
    cy.get(".btn").contains("Edit").click()
    if(menu == "Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type('Buku lainnya{enter}')
        cy.get("#judul").type('Judul Terbaru Untuk Publikasi')
        cy.get('#namajurnal').type('Jurnal Terbaik Tahun Ini V 1.1')
        cy.get("#tglterbit").type('01-07-2023')
        cy.get("#select2-idrubrikkegiatan0-container").type('Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}')
        cy.get('[id="peran[0]"]').select('Editor')
        cy.get('[id="corresponding[0]"]').check()

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }
    cy.get('.callout > .row > .col-md-3').contains('Data Akan Diubah').next()
        .invoke('text').then((ubah) => {
            cy.log("Data Diubah : "+ubah);
        })
})
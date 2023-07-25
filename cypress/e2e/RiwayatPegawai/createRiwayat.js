import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("Sudah ada data riwayat {string} baru dengan status disetujui", (menu) => {
    cy.get(".btn").contains("Tambah Baru").click()
    if(menu == "Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type('Artikel Ilmiah{enter}')
        cy.get("#judul").type('Judul Terbaru oleh Dosen ini')
        cy.get('#namajurnal').type('Jurnal Terbaik Tahun Ini')
        cy.get("#tglterbit").type('20-07-2023')
        cy.get("#select2-idrubrikkegiatan0-container").type('Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}')
        cy.get('[id="peran[0]"]').select('Penulis')
        cy.get('[id="corresponding[0]"]').check()
        cy.get('#select2-status-container').type('Disetujui{enter}')

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }
})
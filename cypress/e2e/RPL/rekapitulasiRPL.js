import { When } from '@badeball/cypress-cucumber-preprocessor'

When ('User klik tombol tampilkan', () => {
    cy.get('.btn').contains('Tampilkan').click()

    cy.get('.title').invoke('text').then((text) => {
        expect(text).contains("LAPORAN REKAPITULASI PENDAFTAR RPL")
    })
})

When ('User klik tombol lihat di tab baru', () => {
    cy.get('.btn').contains('Lihat di Tab Baru').click()

    // Akan membuka window baru, karena tidak bisa dihandle untuk open new window nya
})
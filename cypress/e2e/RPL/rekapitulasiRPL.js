import { When } from '@badeball/cypress-cucumber-preprocessor'

When ('User klik tombol tampilkan', () => {
    cy.get('.btn').contains('Tampilkan').click()

    cy.get('.title').invoke('text').then((text) => {
        expect(text).contains("LAPORAN REKAPITULASI PENDAFTAR RPL")
    })
})
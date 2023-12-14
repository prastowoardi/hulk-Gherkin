import { When } from '@badeball/cypress-cucumber-preprocessor'

When ('Pendaftar melengkapi identitas', () => {
    cy.get('#select2-idagama-container').type('Kristen{enter}')

    cy.get('.f1-buttons > .btn').click()
})

When ('Pendaftar melengkapi riwayat pendidikan', () => {
    cy.get('#nisn').type('89127465123')

    cy.get('.btn-warning').contains('SIMPAN DAN LANJUTKAN').click()
})

When ('Pendaftar melengkapi data wali', () => {
    cy.get('#namakeluarga_I').type('rere')
    cy.get('#select2-pekerjaan_I-container').type('bekerja{enter}')
    cy.get('#select2-idpenghasilan_I-container').type('>{enter}')

    cy.get('#namakeluarga_A').type('tono')
    cy.get('#select2-pekerjaan_A-container').type('bekerja{enter}')
    cy.get('#select2-idpenghasilan_A-container').type('>{enter}')

    cy.get('.btn-warning').contains('SIMPAN DAN LANJUTKAN').click()
})

When ('Pendaftar menentukan prodi', () => {
    cy.get('.btn-warning').click()
})
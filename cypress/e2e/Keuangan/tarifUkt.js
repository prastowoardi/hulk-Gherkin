import { When, Then } from '@badeball/cypress-cucumber-preprocessor'

When('Cek referensi UKT', () => {
    cy.get('.col-xs-8 > .input-group > .form-control').type('ukt{enter}')
    cy.get('.table').invoke('text').then((text) => {
        // cy.log(text)
        if (text.includes('Data kosong')) {
            cy.log('Referensi UKT belum ditemukan, Silahkan buat referensi dahulu !')
            // Buat referesi UKT baru
            cy.get('#wrap-button > .btn').click()
            cy.get('#i_idjenisakun').type('UKT')
            cy.get('#i_namaakun').type('UKT')
            cy.get('#i_idkelompok').select('Kuliah')
            cy.get('#i_idfrekuensi').select('Semester')
            cy.get(':nth-child(6) > .labelinput > .icheckbox_minimal > .iCheck-helper').click()
            cy.get(':nth-child(7) > .labelinput > .icheckbox_minimal > .iCheck-helper').click()
            cy.get(':nth-child(10) > .btn-success').click()
        } else {
            cy.log('Referensi UKT sudah ada')
        }
    })
})

Then('Admin melihat referensi UKT di tabel', () => {
    cy.get('.btn-primary').click()
    // Cek apakah data sudah tersimpan
    cy.get('.col-xs-8 > .input-group > .form-control').type('ukt{enter}')
    cy.get('.table').contains('UKT')
})

const filterData = {
    'periode': {
        selector: '#select2-periode-container',
        value: '2023/2024 Gasal'
    },
    'jalur pendaftaran': {
        selector: '#select2-jalur-container',
        value: 'Jalur Test'
    },
    'gelombang': {
        selector: '#select2-gelombang-container',
        value: 'Gelombang 3'
    },
    'sistem kuliah': {
        selector: '#select2-sistem-container',
        value: 'Reguler'
    }
}

When('Admin mengubah filter {string}', (filterName) => {
    const filter = filterData[filterName]
    
    if (filter) {
        const { selector, value } = filter;
        cy.get(selector).type(value + '{enter}')
    }
})


When('Admin melihat pemberitahuan {string}', (action) => {
    if (action == 'duplikat'){
        cy.get('.alert').contains('sudah ada')
    }
})
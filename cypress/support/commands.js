// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
// const image = 'images/ijazah.jpg'
Cypress.Commands.add('login', (user) => {
    cy.contains('Masuk dengan akun Anda').should('be.visible')
    cy.fixture('user').then((userdata) => {
        cy.get('#userid').type(userdata[user].username)
        cy.get('#password').type(userdata[user].password)
    })
    cy.get('.btn').click()
})

Cypress.Commands.add('addJbtTugas', (jabatanTugas) => {
    cy.fixture('jabatanTugas').then((data) => {
        //Jabatan Tugas
        cy.get('#select2-idjabatantugas-container').type(data[jabatanTugas].jbtTugas+'{enter}')

        //Kategori Kegiatan
        cy.get('#select2-idrubrikkegiatan-container').type(data[jabatanTugas].kategoriKegiatan+'{enter}')

        // SK Kegiatan
        cy.get('#iddokumen_label').click({force: true})
        cy.get('.odd > .text-center > .btn > .fa').click()

        cy.get('#tglterhitungmulai').type(data[jabatanTugas].tglMulai)
        cy.get('#lokasipenugasan').type(data[jabatanTugas].lokasi)

        cy.get('.btn-success').contains("Simpan").click()

        cy.get('.modal-footer > .btn-primary').click()
    })
    
})

Cypress.Commands.add('addPublikasi', (publikasi) => {
    cy.fixture('publikasi').then((data) => {
        cy.get("#select2-idjenispublikasi-container").type(data[publikasi].jnsPublikasi+'{enter}')

        cy.get("#judul").type(data[publikasi].judul)
        cy.get('#namajurnal').type(data[publikasi].namaJurnal)
        cy.get("#tglterbit").type(data[publikasi].tglTerbit)
        cy.get("#select2-idrubrikkegiatan0-container").type(data[publikasi].kategoriKegiatan)
        cy.get('[id="peran[0]"]').select(data[publikasi].peran)
        if(data[publikasi].check == 1){
            cy.get('[id="corresponding[0]"]').check()
        }else if(data[publikasi].check == 0){
            
        }

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()
    })
})
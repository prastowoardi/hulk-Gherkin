import fixtureFile from ('../fixtures/RiwayatPegawai/')
//RIWAYAT
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

        cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
        cy.get('[id="namadokumen[0]"]').type("Ijazah")
        cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")
    })
    
})

Cypress.Commands.add('addPublikasi', (publikasi) => {
    cy.fixture('publikasi').then((data) => {
        cy.get("#select2-idjenispublikasi-container").type(data[publikasi].jnsPublikasi+'{enter}')

        cy.get("#judul").type(data[publikasi].judul)
        cy.get('#namajurnal').type(data[publikasi].namaJurnal)
        cy.get("#tglterbit").type(data[publikasi].tglTerbit)
        cy.get("#select2-idrubrikkegiatan0-container").type(data[publikasi].kategoriKegiatan+'{enter}')
        cy.get('[id="peran[0]"]').select(data[publikasi].peran)
        if(data[publikasi].check == 1){
            cy.get('[id="corresponding[0]"]').check()
            cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
            cy.get('[id="namadokumen[0]"]').type("Ijazah")
            cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")
        }else if(data[publikasi].check == 0){
            cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
            cy.get('[id="namadokumen[0]"]').type("Ijazah")
            cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")
            cy.get('.btn-success').contains("Simpan").click()
        }
    })
})

Cypress.Commands.add('addAnggotaProfesi', (anggotaProfesi) => {
    cy.fixture('anggotaProfesi').then((data) => {

        cy.get("#select2-idrubrikkegiatan-container").type(data[anggotaProfesi].kategoriKegiatan+'{enter}')
        cy.get('#namaorganisasi').type(data[anggotaProfesi].namaOrganisasi)
        cy.get("#peran").type(data[anggotaProfesi].peran)

        // cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
        // cy.get('[id="namadokumen[0]"]').type("Ijazah")
        // cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")
    })
})
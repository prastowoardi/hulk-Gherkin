import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

Given("User login sebagai {string}", (userRole) => {
    cy.visit("gate/login")
    if(userRole == "Admin"){
        cy.login(0)
        cy
            .get('.hr > .inner').click()
            .get('#hr').contains('Administrator Perguruan Tinggi').should('be.visible').click()
    }else if(userRole == "Dosen"){
        cy.login(1)
        cy
        .get('.hr > .inner').click()
        .get('#hr').contains('Dosen').should('be.visible').click()
    }
    
})

When("field {string} dengan data {string}", (fieldName, fieldValue) => {
    cy.visit("hr/list_rjabatanstruktural/7")
    cy.get(".btn.btn-success.btn-sm").contains('Tambah Baru').click()
    
    if(fieldName == "Jabatan Tugas"){
       //Jabatan Tugas
        cy.get('#select2-idjabatantugas-container').click()
        cy.get('.select2-search__field').type(fieldValue+"{enter}")
    } else if(fieldName == "Kategori Kegiatan"){
        //Kategori Kegiatan
        cy.get('#select2-idrubrikkegiatan-container').click()
        cy.get('.select2-search__field').type(fieldValue+"{enter}")
    }
    
    // SK Kegiatan
    cy.get('#iddokumen_label').click()
    cy.get('.odd > .text-center > .btn > .fa').click()

    cy.get('#tglterhitungmulai').type("18-07-2023")
    cy.get('#lokasipenugasan').type("Jakarta Pusat")

    cy.get('.btn-success').contains("Simpan").click()

    cy.get('.modal-footer > .btn-primary').click()

})

// When("Admin mengisi form dengan benar", () => {
//     cy.visit("hr/list_rjabatanstruktural/7")
//     cy.get(".btn.btn-success.btn-sm").contains('Tambah Baru').click()
//     //Jabatan Tugas
//     cy.get('#select2-idjabatantugas-container').click()
//     cy.get('.select2-search__field').type("lainnya{enter}")
//     //Kategori Kegiatan
//     cy.get('#select2-idrubrikkegiatan-container').click()
//     cy.get('.select2-search__field').type("duduk{enter}")
//     // SK Kegiatan
//     cy.get('#iddokumen_label').click()
//     cy.get('.odd > .text-center > .btn > .fa').click()

//     cy.get('#tglterhitungmulai').type("18-07-2023")
//     cy.get('#lokasipenugasan').type("Jakarta Pusat")

//     cy.get('.btn-success').contains("Simpan").click()

//     cy.get('.modal-footer > .btn-primary').click()

// })

// When("Dosen mengisi form dengan benar", () => {
//     cy.visit('hr/list_rjabatanstruktural')
//     cy.get(".btn").contains('Tambah Baru').click()
//     //Jabatan Tugas
//     cy.get('#select2-idjabatantugas-container').click()
//     cy.get('.select2-search__field').type("lainnya{enter}")
//     //Kategori Kegiatan
//     cy.get('#select2-idrubrikkegiatan-container').click()
//     cy.get('.select2-search__field').type("duduk{enter}")
//     // SK Kegiatan
//     cy.get('#iddokumen_label').click()
//     cy.get('.odd > .text-center > .btn > .fa').click()

//     cy.get('#tglterhitungmulai').type("30-08-2023")
//     cy.get('#lokasipenugasan').type("Muara Enim")

//     cy.get('.btn-success').contains("Simpan").click()

//     cy.get('.modal-footer > .btn-primary').click()

// })

Then("User berhasil menambahkan data", () => {
    cy.get('.alert').contains("Penambahan data jabatan tugas berhasil")
})
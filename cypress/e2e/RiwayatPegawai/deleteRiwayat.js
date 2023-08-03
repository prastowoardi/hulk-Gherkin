import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("Sudah ada data riwayat {string} yang dihapus", (menu) => {
    cy.get(".table").find(".label").then(($label) => {
        if ($label.text().includes('Draft')) {
            cy.get(".table").find(".btn").first().click()
            cy.get('.btn-danger > span').should('include.text', 'Hapus').click()
            cy.get('.modal-footer > .btn-primary').click()
        } else {
            cy.get(".table").find(".btn").first().click()
            cy.get(".btn").contains("Edit").click()
            cy.get('#select2-status-container').type('Draft{enter}')
            cy.get('.btn-success').contains("Simpan").click()
            cy.get('.btn-primary').click()
            cy.get('.btn-danger > span').should('include.text', 'Hapus').click()
            cy.get('.modal-footer > .btn-primary').click()
        }
    })    

    // Menampilkan jumlah data akan dihapus
    cy.get('.callout > .row > .col-md-3').contains('Data Akan Dihapus').next()
        .invoke('text').then((hapus) => {
            cy.log("Data Dihapus : "+hapus)
        })
})
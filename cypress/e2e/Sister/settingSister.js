import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("Admin ubah filter {string} dengan {string}", (filterName,filterValue) => {
    if(filterName == "Kelompok"){
        cy.get('#idjenissetting').select(filterValue)
    }
})

When ("Admin mengaktifkan servis sister", () => {
    cy.get('.table').contains('sister_active')
        .nextAll().should('have.length',3).find('.btn-primary').click()
    cy.get('#u_valuesetting').select('Aktif')
    cy.get(':nth-child(53) > :nth-child(4) > .btn-success').click()
})

When ("Admin mengisi username sister", () => {
    cy.get('.table').contains('sister_username')
        .nextAll().should('have.length',3).find('.btn-primary').click()
    cy.get('#u_valuesetting').clear()
        .type('xL0iwi3tdZwJeXuJHGqc1ELKLAsipRtyDeEADhMXiEw=')
    cy.get(':nth-child(57) > :nth-child(4) > .btn-success').click()
})

When("Admin mengisi url {string} sister", (server) => {
    cy.get('.table').contains('sister_url').nextAll()
        .should('have.length', 3).find('.btn-primary').click()
    
    const sisterUrl = server === 'sandbox'
        ? 'https://sister-api.kemdikbud.go.id/ws-sandbox.php/1.0/'
        : 'https://sister-api.kemdikbud.go.id/ws.php/1.0/'
    
    cy.get('#u_valuesetting').clear().type(sisterUrl)
    cy.get(':nth-child(56) > :nth-child(4) > .btn-success').click()
})

When ("Admin mengisi password sister", () => {
    cy.get('.table').contains('sister_password')
        .nextAll().should('have.length',3).find('.btn-primary').click()
    cy.get('#u_valuesetting').clear()
        .type('EIwcMnQnmgRGL6ykrNdMj2ObZa+mfHlrm6sa8K9foyM4m6LATHF61XfUP1Wggkbe')
    cy.get(':nth-child(54) > :nth-child(4) > .btn-success').click()
})

When ("Admin mengisi pengguna sister", () => {
    cy.get('.table').contains('sister_pengguna_id')
        .nextAll().should('have.length',3).find('.btn-primary').click()
    cy.get('#u_valuesetting').clear()
        .type('ae938146-a935-43dc-ad53-e1c458da907f')
    cy.get(':nth-child(55) > :nth-child(4) > .btn-success').click()
})

When ("Admin cek service sister", () => {
    cy.get('.btn-group > .dropdown-toggle').click()
    cy.get('.text-left').should('include.text', 'Service Sister').click()
    cy.get('.alert').should('include.text','Koneksi Service Sister berhasil')
})
import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("Admin ubah tampilam PMB menjadi {string}", (version) => {
    cy.get(".table").contains("Versi Template")
        .parent().find(".btn").click()
    if (version == "V1") {
        cy.get("#u_valuesetting").select("Default")
    } else {
        cy.get("#u_valuesetting").select("Versi 2.0")
    }

    // Simpan
    cy.get('.btn-success').click()
})
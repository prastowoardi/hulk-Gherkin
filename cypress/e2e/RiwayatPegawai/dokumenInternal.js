import { When } from "@badeball/cypress-cucumber-preprocessor"

When("Admin mengisi {string} dengan {string}", (fieldName,fieldValue) => {
    if (fieldName == "No Dokumen"){
        cy.get('#nodokumen').type(fieldValue)
    } else if (fieldName == "Nama Dokumen"){
        cy.get('#namadokumen').type(fieldValue)
    } else if (fieldName == "Tanggal"){
        cy.get('#tgldokumen').type(fieldValue)
    } else if (fieldName == "Referensi"){
        cy.get('#idjenisrubrik').select(fieldValue)
    } else if (fieldName == "Tingkat"){
        cy.wait(1000)
        cy.get('#select2-tingkat-container').type(fieldValue+'{enter}')
    } else if (fieldName == "Status Dokumen"){
        cy.get('#statusdokumen').select(fieldValue)
    } else if (fieldName == "Pegawai"){
        cy.get('[name="idpegawai[0]_label"]').type(fieldValue)
        cy.get('.tt-suggestion').each(($el) => {
			// $el is a wrapped jQuery element
			if ($el.text() == '8957240022 - Dr. DEDE  CAHYADI, M.Kom, S.Kom, M.Pd, M.Kom, M.Hum.') {
				cy.wrap($el).click()
			}
        })
    }
})
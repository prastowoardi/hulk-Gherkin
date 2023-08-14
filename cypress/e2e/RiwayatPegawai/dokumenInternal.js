import { When } from "@badeball/cypress-cucumber-preprocessor"

const fieldSelectors = {
    "No Dokumen": '#nodokumen',
    "Nama Dokumen": '#namadokumen',
    "Tanggal": '#tgldokumen',
    "Referensi": '#idjenisrubrik',
    "Tingkat": '#select2-tingkat-container',
    "Status Dokumen": '#statusdokumen',
    "Pegawai": '[name="idpegawai[0]_label"]'
}

When("Admin mengisi {string} dengan {string}", (fieldName, fieldValue) => {
    const selector = fieldSelectors[fieldName]

    if (selector) {
        if (fieldName === "Tingkat") {
            cy.wait(1000)
            cy.get(selector).type(fieldValue + '{enter}')
        } else if (fieldName === "Pegawai") {
            cy.get(selector).type(fieldValue)
            cy.get('.tt-suggestion').each(($el) => {
                if ($el.text().includes('8957240022 - Dr. DEDE  CAHYADI')) {
                    cy.wrap($el).click()
                }
            })
        } else if (fieldName === "Referensi" || fieldName === "Status Dokumen") {
            cy.get(selector).select(fieldValue)
        }else {
            cy.get(selector).type(fieldValue)
        }
    }
})

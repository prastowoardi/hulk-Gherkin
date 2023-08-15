import { When } from "@badeball/cypress-cucumber-preprocessor"

const fieldSelectors = {
    "No Dokumen": '#nodokumen',
    "Nama Dokumen": '#namadokumen',
    "Tanggal": '#tgldokumen',
    "Jenis Dokumen": '#jenisdokumen',
    "Uraian": '#uraian',
    "Url": '#url',
    "Referensi": '#idjenisrubrik',
    "Tingkat": '#select2-tingkat-container',
    "Status Dokumen": '#statusdokumen',
    "Pegawai": '[name="idpegawai[0]_label"]',
    "Pegawai 2": '[name="idpegawai[1]_label"]',
    "Pegawai 3": '[name="idpegawai[2]_label"]'
}

When("Admin mengisi {string} dengan {string}", (fieldName, fieldValue) => {
    const selector = fieldSelectors[fieldName]

    if (!selector) {
        return fieldName // Selector tidak ditemukan
    }

    if (fieldName === "Tingkat") {
        cy.wait(1000)
        cy.get(selector).type(fieldValue + '{enter}')
    } else if (fieldName.startsWith("Pegawai")) {
        cy.get(selector).type(fieldValue)
        const pegawaiMappings = {
            "Pegawai": "8957240022",
            "Pegawai 2": "196604181994032002",
            "Pegawai 3": "196605171994031004"
        }
        const targetText = pegawaiMappings[fieldName]

        cy.get('.tt-suggestion').each(($el) => {
            if ($el.text().includes(targetText)) {
                cy.wrap($el).click()
            }
        })
    } else if (fieldName === "Referensi" || fieldName === "Status Dokumen" || fieldName === "Jenis Dokumen") {
        cy.get(selector).select(fieldValue)
    } else {
        cy.get(selector).type(fieldValue)
    }
})
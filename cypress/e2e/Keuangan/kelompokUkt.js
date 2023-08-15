import { When } from "@badeball/cypress-cucumber-preprocessor"

When("Admin klik tombol {string}", (buttonName) => {
    const buttonSelectors = {
        "Tambah": "#wrap-button > .btn:contains('Tambah')",
        "iSimpan": ".btn-success[data-original-title='Simpan']"
    }

    const selector = buttonSelectors[buttonName]
    if (selector) {
        cy.get(selector).click()
    } else {
        cy.log("Tombol " + buttonName + " tidak ditemukan / ID tombol multiple !")
    }
})

When("Admin melihat alert {string}", (message) => {
    const successMessages = {
        "Berhasil": "Penambahan data Kelompok UKT berhasil",
        "Hapus": "Penghapusan data Kelompok UKT berhasil",
        "tarif ukt berhasil": "Penambahan data Tarif UKT berhasil"
    }

    const successMessage = successMessages[message]

    if (successMessage) {
        cy.get('.alert').contains(successMessage)
    } else {
        cy.log("Penambahan data Gagal !")
    }
})

When("Admin melihat data ada di list ukt", () => {
    cy.get('.table').contains('UKT 4')
    cy.log("Data ada di list kelompok UKT !")
})

When("Admin menghapus data {string}", (uktName) => {
    cy.get('.table').contains(uktName).then(($value) => {
        cy.wrap($value).nextUntil('.btn-danger') // Ganti '.btn-danger' dengan element yang sesuai
        .each(($value, index) => {
            if (index < 2) {
              // Lakukan tindakan pada dua elemen pertama, dapat menyesuaikan kondisi sesuai kebutuhan
              cy.wrap($value).click()
            }
          })
    })
})

const fieldSelectors = {
    "Kode": "#i_idkelompokukt",
    "Nama": "#i_namakelompokukt",
    "KIP Kuliah": ".iCheck-helper",
    "periode masuk": "#idperiode",
    "gelombang": "#idgelombang",
    "sistem kuliah": "#idsistemkuliah",
    "jalur pendaftaran": "#idjalurpendaftaran",
    "prodi": "#select2-idunit-container",
    "kelompok ukt": "#idkelompokukt",
    "nominal tarif": "#nominaltarif",
    "kuota": "#kuotaukt",
    "jumlah cicilan": "#jmlcicilan",
    "cicilan 1": "#cicilan_1",
    "cicilan 2": "#cicilan_2",
    "cicilan 3": "#cicilan_3",
    "frekuensi denda": "#idfrekuensi",
    "nominal denda": "#nominaldenda",
    "max denda": "#maxdenda"
}

When("Admin mengisi field {string} dengan {string}", (fieldName, fieldValue) => {
    const selector = fieldSelectors[fieldName]

    if (!selector) {
        return // No matching selector found, do nothing
    }

    if (fieldName === "KIP Kuliah") {
        fieldValue === "1" ? cy.get(selector).click() : cy.get(selector)
    } else if (["periode masuk", "prodi"].includes(fieldName)) {
        cy.get(selector).type(fieldValue + '{enter}')
    } else if (["gelombang", "sistem kuliah", "jalur pendaftaran", "kelompok ukt", "jumlah cicilan", "frekuensi denda"].includes(fieldName)) {
        cy.get(selector).select(fieldValue)
    } else {
        cy.get(selector).type(fieldValue)
    }
})
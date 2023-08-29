import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("User menuju halaman {string}", (page) => {
    cy.visit(page)
})

When ("User masuk ke halaman jalur seleksi", () => {
    cy.get('.container-fluid > :nth-child(2)').contains('Jalur Seleksi').click()
})

When ("User mengubah filter sesuai dengan jalur seleksi yang dicari", () => {
    cy.get('#select2-jenjang-container').type('S1{enter}')
    cy.get('#select2-sistem-container').type('reguler{enter}')
})

When ("User memilih jalur pendaftaran", () => {
    cy.get('.cards-jalur').contains("Jalur RPL")
    // cy.get('.cards-jalur').find('.btn').contains("Detail").click()
    cy.get('.cards-jalur').find('.btn').contains("Daftar").click()
})

const inputField = {
    "nama pendaftar": "#namapendaftar",
    "no hp": "#nohp",
    "email": "#email",
    "tempat lahir": "#tmplahir",
    "nik": "#nik",
    "tgl lahir": "#tgllahir",
    "jurusan": "#jurusan",
}

const radioButton = {
    "laki laki": "#jk_L",
    "perempuan": "#jk_P"
}

const select2Actions = {
    "provinsi": "#select2-idpropinsi-container",
    "kab/kota": "#select2-idkota-container",
    "jenis sekolah": "#select2-idjenisinstitusi-container",
    "th lulus": "#select2-thnlulus-container",
    "pilihan 1": "#select2-pilihan_1-container",
    "pilihan 2": "#select2-pilihan_2-container"
}

const autoComplete = {
    "nama sekolah": {
        selector: "#npsn_label",
        suggestionText: "20502725 - SMAN 1 NGORO - KABUPATEN MOJOKERTO"
    }
}

const button = {
    "lanjut": ".btn:contains('Lanjut')",
    "sebelumnya": ".btn:contains('Sebelumnya')",
    "daftar": ".btn:contains('Daftar Sekarang')",
    "konfirmasi pendaftaran": ".btn:contains('Konfirmasi Pendaftaran')"
}


When ("Pendaftar mengisi data {string} dengan {string}", (fieldName,fieldValue) => {
    if (inputField[fieldName]) {
        cy.get(inputField[fieldName]).type(fieldValue)
    } else if (radioButton[fieldValue]) {
        if ( fieldValue == 'laki laki' ) {
            cy.get(radioButton[fieldValue]).click()
        } else {
            cy.get(radioButton[fieldValue]).click()
        }
    } else if (select2Actions[fieldName]) {
        const selectSelector = select2Actions[fieldName]
        cy.get(selectSelector).type(fieldValue + '{enter}')
    } else if (autoComplete[fieldName]) {
        const autoCompleteSelector = autoComplete[fieldName].selector
        const suggestionText = autoComplete[fieldName].suggestionText
        cy.get(autoCompleteSelector).type(fieldValue)
        cy.get('.tt-suggestions').contains(suggestionText).click()
    }
})

When ("Pendaftar {string} data valid", (check) => {
    cy.get('#form-daftar').should('include.text','Saya menyetujui bahwa data yang telah dimasukkan adalah Benar dan dapat dipertanggungjawabkan.')
    if (check == "centang"){
        cy.get('label').click()
        cy.get('.btn').contains('Konfirmasi Pendaftaran').should('not.have.attr','disabled')
    } else {
        cy.get('.btn').contains('Konfirmasi Pendaftaran').should('have.attr','disabled')
    }
})

When("Pendaftar klik {string}", (buttonName) => {
    cy.get(button[buttonName]).click()
})
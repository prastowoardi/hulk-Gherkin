import { When } from "@badeball/cypress-cucumber-preprocessor"

When ("User menuju halaman {string}", (page) => {
    cy.visit(page)
})

When ("User masuk ke halaman jalur seleksi {string}", (version) => {
    if (version == "V1") {
        cy.get('.container-fluid > :nth-child(2)').contains('Jalur Seleksi').click()
    }
})

When ("User mengubah filter sesuai dengan jalur seleksi yang dicari", () => {
    cy.get('#select2-jenjang-container').type('S1{enter}')
    cy.get('#select2-sistem-container').type('reguler{enter}')
})

When ("User memilih jalur pendaftaran {string}", (version) => {
    if (version == "V1") {
        cy.contains('.cards-jalur', 'Gelombang 3').within(() => {
            cy.get('.btn:contains("Daftar")').click()
        })
    }
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
    // "prodi": ".select2.select2-container.select2-container--default"
}

const autoComplete = {
    "nama sekolah 1": {
        selector: "#npsn_label",
        suggestionText: "20502725 - SMAN 1 NGORO - KABUPATEN MOJOKERTO"
    },
    "nama sekolah 2": {
        selector: "#npsn_label",
        suggestionText: "20100211 - SMAN 4 JAKARTA - KOTA JAKARTA PUSAT"
    }
}

const button = {
    "lanjut": ".btn:contains('Lanjut')",
    "sebelumnya": ".btn:contains('Sebelumnya')",
    "daftar": ".btn:contains('Daftar Sekarang')",
    "konfirmasi pendaftaran": ".btn:contains('Konfirmasi Pendaftaran')",
    "ok": ".modal-content > .modal-footer > .btn-primary:contains('OK')",
    "masuk": ".login-button > .button:contains('Masuk')",
    "login": ".btn:contains('LOGIN')",
    "lanjutkan mendaftar": ".button-pmb_primary",
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
        cy.get(selectSelector, { timeout: 10000 }).should('be.visible').type(fieldValue + '{enter}')
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

When ("Pendaftar klik {string}", (buttonName) => {
    cy.get(button[buttonName]).click()
})

When ("Pendaftar berhasil daftar", () => {
    cy.get('.body-pmb').contains('Pendaftaran Berhasil')
    cy.get('.cards-id').contains('ID Pendaftar')
})

let globalID
let globalPIN

When ("Pendaftar mendapatkan {string} yang dapat digunakan untuk login", (access) => {
    if (access == "ID Pendaftar") {
        cy.get('.id').invoke('text').then((id) => {
            globalID = id // Simpan ID dalam variabel global
            cy.log(globalID)
        })
    } else if (access == "PIN"){
        cy.get('.katasandi').invoke('text').then((pin) => {
            globalPIN = pin // Simpan PIN dalam variabel global
            cy.log(globalPIN)
        })
    }
})

When ("Pendaftar input credentials", () => {
    cy.get('#idpendaftar').type(globalID)
    cy.get('#pin').type(globalPIN)
})

When ("Pendaftar berhasil masuk kehalaman pendaftar", () => {
    cy.get('.main-header').contains('Selamat Datang,')
    cy.get('.cards-summary').contains('ID Pendaftar')
    cy.log('ID Pendaftar : ' + globalID)
})
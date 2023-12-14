import { When } from "@badeball/cypress-cucumber-preprocessor"

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

const checkbox = {
    "menyetujui": "#form__check1"
}

const select2Actions = {
    "provinsi": "#select2-idpropinsi-container:contains('Provinsi')",
    "kab/kota": "#select2-idkota-container:contains('Kota')",
    "jenis sekolah": "#select2-idjenisinstitusi-container",
    "th lulus": "#select2-thnlulus-container",
    "pilihan 1": "#select2-pilihan_1-container",
    "pilihan 2": "#select2-pilihan_2-container",
    "pendidikan terakhir": ".select2-selection:contains('Pendidikan Terakhir')"
}

const autoComplete = {
    "nama sekolah 1": {
        selector: "#npsn_label",
        suggestionText: "20502725 - SMAN 1 NGORO - KABUPATEN MOJOKERTO"
    },
    "nama sekolah 2": {
        selector: "#npsn_label",
        suggestionText: "20100211 - SMAN 4 JAKARTA - KOTA JAKARTA PUSAT"
    },
    "nama pt": {
        selector: "#iduniversitas_label",
        suggestionText: "005035 - Politeknik Negeri Banyuwangi"
    },
    "prodi": {
        selector: "#iduniversitasprodi_label",
        suggestionText: "55401 - Teknik Informatika (D3)"
    }
}

const button = {
    "lanjutkan mendaftar": ".action > .button-pmb_primary",
    "masuk sekarang": ".button-pmb_primary",
    "masuk": ".button-pmb_primary"
}

When ('Pendaftar memilih jenjang {string} prodi {string}', (jenjang,prodiName) => {      
    
    cy.get(`#pills-${jenjang}-tab`).click({force: true})
    cy.get('#search_prodi').type(prodiName + '{enter}',{force:true})

    cy.get(`#pills-${jenjang} > .table`).contains(prodiName)
        .parent().parent().parent().next().next().next().children()

    cy.get(`[data-prodi="${prodiName}"] > :nth-child(4) > .button-pmb_primary-outline`)
        .contains('Daftar Sekarang')
        .should('have.attr', 'target', '_blank')
        .invoke('attr', 'href')
        .then(href => {
            cy.visit(`localhost/siacloud/spmbfront/${href}`);
        });
})

When ('Pendaftar memilih jalur pendaftaran {string}', (jalurName) => {
    cy.get('#jalur').children().children().contains(jalurName)
        .parent().parent().parent().next()
        .find('.button').click({force: true})
})

When ('Pendaftar klik tombol isi fomulir pendaftaran', () => {
    cy.get('.button-pmb_primary').click()
})

When ("Pendaftar mengisi data {string} dengan {string} di v2", (fieldName,fieldValue) => {
    if (inputField[fieldName]) {
        cy.get(inputField[fieldName]).type(fieldValue,{force: true})
    } else if (radioButton[fieldValue]) {
        if ( fieldValue == 'laki laki' ) {
            cy.get(radioButton[fieldValue]).click({force: true})
        } else {
            cy.get(radioButton[fieldValue]).click({force: true})
        }
    } else if (select2Actions[fieldName]) {
        const selectSelector = select2Actions[fieldName]
        switch(fieldName) {
            case 'pendidikan terakhir':
            case 'provinsi':
            case 'kab/kota':
            case 'th lulus':
            case 'jenis sekolah':
                cy.get(selectSelector, { timeout: 10000 }).click({force: true})
                cy.get('.select2-search__field').type(fieldValue + '{enter}')
                break;
            default:
                cy.get(selectSelector, { timeout: 10000 }).should('be.visible').type(fieldValue + '{enter}',{force: true})
        }
    } else if (autoComplete[fieldName]) {
        const autoCompleteSelector = autoComplete[fieldName].selector
        const suggestionText = autoComplete[fieldName].suggestionText
        cy.get(autoCompleteSelector).type(fieldValue,{force: true})
        cy.get('.tt-suggestions').contains(suggestionText).click({force: true})
    } else if (checkbox[fieldName]) {
        if (fieldValue == "ya") {
            cy.get(checkbox[fieldName]).click()
        } else {
            cy.log("Checkbox menyetujui tidak ditemukan")
        }
    }
})

When ("Pendaftar klik {string} di v2", (buttonName) => {
    cy.get(button[buttonName]).click({force: true})
})

When ( "Pendaftar berhasil daftar di V2", () => {
    cy.get('.heading-content').invoke('text').then((content) => {
        cy.log(content)
    })
    cy.get('.card-info-akun').contains('ID Pendaftar')
})

let globalIDV2
let globalPINV2

When ("Pendaftar mendapatkan {string}", (access) => {
    if (access == "ID Pendaftar") {
        cy.get('#idpendaftar').invoke('text').then((id) => {
            globalIDV2 = id // Simpan ID dalam variabel global
            cy.log(globalIDV2)
        })
    } else if (access == "PIN"){
        cy.get('#pinpendaftar').invoke('text').then((pin) => {
            globalPINV2 = pin // Simpan PIN dalam variabel global
            cy.log(globalPINV2)
        })
    }
})

When ("Pendaftar memasukkan id dan pin", () => {
    cy.get('#idpendaftar').clear({force: true}).type(globalIDV2,{force: true})
    cy.get('#pin').clear({force: true}).type(globalPINV2,{force: true})
})

When ("Pendaftar berhasil masuk kehalaman pendaftar dari V2", () => {
    cy.get('.main-header').contains('Selamat Datang,')
    cy.get('.cards-summary').contains('ID Pendaftar')
    cy.log('ID Pendaftar : ' + globalIDV2)
})
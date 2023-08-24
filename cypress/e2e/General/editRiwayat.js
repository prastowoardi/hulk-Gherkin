import { When } from "@badeball/cypress-cucumber-preprocessor"

// Menampung field yang bisa diinput string
const inputActions = {
    "Judul": "#judul",
    "Tanggal Terbit": "#tglterbit",
    "Nama Organisasi": "#namaorganisasi",
    "Mulai Keanggotaan": "#tglmulai",
    "Peran Atas": "#peran",
    "TMT Mulai": "#tglterhitungmulai",
    "Lokasi Penugasan": "#lokasipenugasan",
    "TMT Jabatan": "#tmtmulai",
    "Judul Penelitian": "#judulpenelitian",
    "Tahun Pelaksanaan Ke": "#tahunke",
    "Tanggal Mulai": "#tglmulai",
    "Tanggal Awal": "#tglawal",
    "Dana PT": '[name="value[0]"]',
    "Dana Pemerintah": '[name="value[1]"]',
    "Dana DN": '[name="value[2]"]',
    "Dana LN": '[name="value[3]"]',
    "Judul Kegiatan": "#namakegiatan"
}

// Menampung field yang menggunakan select 2
const select2Actions = {
    "Jenis Publikasi": "#select2-idjenispublikasi-container",
    "Kategori Kegiatan": "#select2-idrubrikkegiatan0-container",
    "Status Pengajuan": "#select2-status-container",
    "Kategori Kegiatan Atas": "#select2-idrubrikkegiatan-container",
    "Jabatan Tugas": "#select2-idjabatantugas-container",
    "Jenis SKIM": "#select2-idskimkegiatan-container",
    "Nama Jabatan": "#select2-idsubfungsional-container",
    "Tahun Usulan": "#select2-tahunusulan-container",
    "Tahun Kegiatan": "#select2-tahunkegiatan-container",
    "Roadmap": "#select2-kesesuaianroadmap-container"
}

// Menampung field yang dapat langsung select
const selectActions = {
    "Peran": '[id="peran[0]"]'
}

// Menampung field yang menggunakan checkbox
const checkboxActions = {
    "Corresponding": '[id="corresponding[0]"]'
}

// Menampung field yang menggunakan auto complete
const autoCompleteActions = {
    "Afiliasi": {
        selector: "#iduniversitas_label",
        suggestionText: "005009 - Politeknik Negeri Padang"
    },
    "Kelompok Bidang": {
        selector: "#idkelompokbidang_label",
        suggestionText: "Teknik Mesin"
    }
}

When("{string} mengubah field {string} dengan {string}", (user, fieldName, fieldValue) => {
    if (inputActions[fieldName]) {
        if (fieldName == "Tanggal Mulai" || fieldName ==  "Tanggal Awal"){
            cy.get(inputActions[fieldName]).clear().type(fieldValue)
            cy.get('#sc-footer').click()
        } else {
            cy.get(inputActions[fieldName]).clear().type(fieldValue)
        }
    } else if (select2Actions[fieldName]) {
        const selectSelector = select2Actions[fieldName]
        if (fieldName === "Roadmap") {
            const key = fieldValue === "Sesuai" ? '{downarrow}' : ''
            cy.get(selectSelector).type(fieldValue + key + '{enter}')
        } else {
            cy.get(selectSelector).type(fieldValue + '{enter}')
        }
    } else if (selectActions[fieldName]) {
        cy.get(selectActions[fieldName]).select(fieldValue)
    } else if (checkboxActions[fieldName]) {
        cy.get(checkboxActions[fieldName]).as("checkbox")
        if (fieldValue === "1") {
            cy.get("@checkbox").check()
        } else if (fieldValue === "0") {
            cy.get("@checkbox").uncheck()
        }
    } else if (autoCompleteActions[fieldName]) {
        const autoCompleteSelector = autoCompleteActions[fieldName].selector
        const suggestionText = autoCompleteActions[fieldName].suggestionText
        cy.get(autoCompleteSelector).clear().type(fieldValue)
        cy.get('.tt-suggestions').contains(suggestionText).click()
    } else if(fieldSectors[fieldName]) {
        if (selector) {
            if (fieldName === "Modal SK") {
                cy.get('#iddokumen_label').click()
                cy.get('.odd > .text-center > .btn > .fa').click()
            }
        }
    }
})

// Buat objek yang memetakan nama field ke selector
const fieldSelectors = {
    "Judul": "#judul",
    "Tanggal Terbit": "#tglterbit",
    "Peran": '[id="peran[0]"]',
    "Nama Organisasi": "#namaorganisasi",
    "Mulai Keanggotaan": "#tglmulai",
    "Peran Atas": "#peran",
    "TMT Mulai": "#tglterhitungmulai",
    "Modal SK": "#iddokumen_label",
    "Lokasi Penugasan": "#lokasipenugasan",
    "TMT Jabatan": "#tmtmulai",
    "Judul Penelitian": "#judulpenelitian",
    "Afiliasi": "#iduniversitas_label",
    "Kelompok Bidang": "#idkelompokbidang_label",
    "Tahun Pelaksanaan Ke": "#tahunke",
    "Tanggal Mulai": "#tglmulai",
    "Dana PT": '[name="value[0]"]',
    "Dana Pemerintah": '[name="value[1]"]',
    "Dana DN": '[name="value[2]"]',
    "Dana LN": '[name="value[3]"]',
    "Judul Kegiatan": "#namakegiatan",
    "Tanggal Awal": "#tglawal",
    // ...tambahkan selector lain sesuai kebutuhan
}
  
When("{string} mengosongkan field {string}", (user,fieldName) => {
const selector = fieldSelectors[fieldName]

if (selector) {
    if (fieldName === "Modal SK") {
        cy.get('#iddokumen_label').click()
        cy.get('.btn-warning').contains("Hapus").click()
    } else {
        cy.get(selector).clear()
    }
} else {
    // Handle jika nama field tidak ditemukan dalam objek fieldSelectors
    cy.log(`Field dengan nama ${fieldName} tidak ditemukan.`)
}
})
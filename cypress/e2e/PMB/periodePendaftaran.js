import { When } from "@badeball/cypress-cucumber-preprocessor"

const inputActions = {
    "nama" : "#namaperiodedaftar",
    "tgl mulai" : "#tglawalbuka",
    "tgl akhir" : "#tglakhirbuka",
    "akhir finalisasi" : "#tglakhirfinalisasi",
    "awal daftar ulang" : "#tglawaldaftarulang",
    "akhir daftar ulang" : "#tglakhirdaftarulang",
    "kode pendaftar" : "#prefixkodependaftar",
    "umumkan nilai" : "#tglumumkannilai",
    "waktu umumkan nilai" : "#waktuumumkannilai",
    "umumkan lulus" : "#tglumumkankelulusan",
    "waktu umumkan lulus" : "#waktuumumkankelulusan",
    "prefix nim" : "#prefixnim",
    "kuota" : "#jmlditerima"
}

const select2Actions = {
    "periode" : "#select2-idperiode-container",
    "gelombang" : "#select2-idgelombang-container",
    "jalur" : "#select2-idjalurpendaftaran-container",
    "sistem kuliah" : "#select2-idsistemkuliah-container",
    "jenis program" : "#select2-i_idjenispilihan-container",
    "jumlah prodi" : "#select2-i_jmlpilihan-container",
    "program studi" : "#select2-idunit-container",
    "jns program" : "#select2-idjenispilihan-container",
    "jenis syarat" : "#select2-jenissyarat-container",
    "syarat" : "#select2-i_idsyarat-container"
}

const checkBox = {
    "tampil nilai" : "#block-istampilnilai > .col-md-7 > .labelinput > .icheckbox_minimal",
    "pilihan 1" : "#block-pilihan\\[1\\] > .col-md-7 > .labelinput > .icheckbox_minimal",
    "pilihan 2" : "#block-pilihan\\[2\\] > .col-md-7 > .labelinput > .icheckbox_minimal",
    "wajib" : ":nth-child(3) > .labelinput > .icheckbox_minimal",
    "upload" : ":nth-child(4) > .labelinput > .icheckbox_minimal > .iCheck-helper"
}


const button = {
    "simpan jenis program": "#insert-row-ms > :nth-child(5) > .btn",
    "ya": "#modal-konfirmasi > .modal-footer > .btn-primary",
    "Pengaturan": "#item-pengaturan",
    "tambah data": ".btn-success:contains('Tambah Data')",
    "simpan syarat": ":nth-child(6) > .btn",
    "simpan syarat x": "#insert-row-ms > :nth-child(6) > .btn > .fa",
    "tambah periode": ".btn:contains('Tambah')"
}

const menu = {
    "jenis program" : "#sidebar-menu-list > :nth-child(2) > a:contains('Jenis Program')",
    "program studi" : "#sidebar-menu-list > :nth-child(3) > a:contains('Program Studi')",
    "seleksi pendaftaran" : "#sidebar-menu-list > :nth-child(4) > a:contains('Seleksi Pendaftaran')",
    "syarat pendaftaran" : "#sidebar-menu-list > :nth-child(6) > a:contains('Syarat Pendaftaran')"
}

When ("Admin isi field {string} dengan {string}", (fieldName,fieldValue) => {
    if (inputActions[fieldName]) {
        if (fieldName == "tgl mulai" || fieldName ==  "tgl akhir" || fieldName == "akhir finalisasi" 
            || fieldName == "awal daftar ulang" || fieldName == "akhir daftar ulang"){
            cy.get(inputActions[fieldName]).type(fieldValue)
            cy.get('#sc-footer').click()
        } else {
            cy.get(inputActions[fieldName]).type(fieldValue)
        }
    } else if (select2Actions[fieldName]) {
        const selectSelector = select2Actions[fieldName]
        cy.get(selectSelector).type(fieldValue + '{enter}')
    } else if (checkBox[fieldName]) {
        cy.get(checkBox[fieldName]).as("checkbox")
        if (fieldValue === "ya") {
            cy.get("@checkbox").click()
        } else {
            cy.get("@checkbox")
        }
    }
})

When ("Admin klik {string}", (buttonName) => {
    const selector = button[buttonName]
    cy.get(selector).click()
})

When ("Admin mengatur {string}", (menuName) => {
    const menuSelector = menu[menuName]
    cy.get(menuSelector).click()
})

When ("Admin melihat detail periode {string}", (periodeName) => {
    // Cari nama periode, klik tombol detail
    cy.get("input.form-control.input-sm").type(periodeName + '{enter}')
    cy.get('.table').contains(periodeName).parent().find('.btn-info').click()
})
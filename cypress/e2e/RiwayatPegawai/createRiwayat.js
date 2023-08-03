import { When, Then } from "@badeball/cypress-cucumber-preprocessor"
const chalk = require('chalk')

When("{string} melihat jumlah anggota adalah {string}", (user,jumlah) => {
    // Hitung baris
    cy.get('#table-pegawai > tbody').find('tr').then((row)=>{
        const rowCount = row.length
        if (jumlah == rowCount){
            cy.log("Jumlah anggota pada riwayat ini : "+ rowCount)
            cy.log("Jumlah anggota yang ditambahkan sesuai")
        } else {
            cy.log("JUMLAH ANGGOTA TIDAK SESUAI, SILAHKAN CEK SECARA MANUAL")
            cy.log("Jumlah anggota yang diharapkan : "+ jumlah)
            cy.log("Jumlah anggota pada riwayat ini : "+ rowCount)
        }
    })
})

When("{string} melihat data {string} ada di list", (user, menu) => {
    cy.get('.btn-info').click()

    // Mapping untuk cari text
    const searchText = {
        'penelitian': 'Metode pengajaran sekolah Montessori.',
        'pengabdian': 'Perancangan Aset Konten Digital untuk Kegiatan Promosi Agrowisata PT Perkebunan Nusantara VIII',
        'publikasi': 'Judul Baru',
        'jabatan tugas': 'Duta Besar',
        'anggota profesi': 'PMI',
    }

    // Function untuk mencari data di dalam tabel dan memberikan nilai balikan
    function searchDataInTable(text) {
        return cy.get('.table > tbody').find('tr').then((rows) => {
            const rowIndex = Array.from(rows).findIndex((row) => row.innerText.includes(text))
            if (rowIndex !== -1) {
                const rowNumber = rowIndex + 1 // + 1 untuk mendapatkan nomor baris yang sebenarnya (1-based index)
                return cy.log(`Data ditemukan pada baris ke-${rowNumber}`)
            } else {
                return cy.log('Data tidak ditemukan !')
            }
        });
    }

    // Objek searchText digunakan untuk menentukan teks yang dicari berdasarkan 'menu'
    const searchData = searchText[menu] ?? 'Data tidak ditemukan !' // Use nullish coalescing operator
    searchDataInTable(searchData)
})

When("Sudah ada data riwayat {string} baru dengan status disetujui", (menu) => {
    cy.get(".btn").contains("Tambah Baru").click()
    //PUBLIKASI
    if(menu == "Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type('Artikel Ilmiah{enter}')
        cy.get("#judul").type('Judul Terbaru oleh Dosen ini')
        cy.get('#namajurnal').type('Jurnal Terbaik Tahun Ini')
        cy.get("#tglterbit").type('20-07-2023')
        cy.get("#select2-idrubrikkegiatan0-container").type('Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}')
        cy.get('[id="peran[0]"]').select('Penulis')
        cy.get('[id="corresponding[0]"]').check()
        cy.get('#select2-status-container').type('Disetujui{enter}')

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }
    // PENELITIAN
    else if(menu == "Penelitian"){
        cy.get('#iduniversitas_label').type('005009')
        // Handle autocompplete
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
        cy.get('#idkelompokbidang_label').type('mesin')
        // Handle autocompplete
        cy.get('.tt-suggestion').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === 'Teknik Mesin') {
				cy.wrap($el).click()
			}
        })
        cy.get('#select2-idskimkegiatan-container').type('Penelitian Fundamental{enter}')
        cy.get('#judulpenelitian').type('Metode pengajaran sekolah Montessori.')
        cy.get('#select2-tahunusulan-container').type('2018{enter}')
        cy.get('#select2-tahunkegiatan-container').type('2019{enter}')
        cy.get('#tahunke').type('3')
        cy.get('#tglmulai').type('30-06-2023')
        cy.get('#select2-kesesuaianroadmap-container').type('Sesuai{downarrow}{enter}')
        cy.get("#select2-idrubrikkegiatan0-container").type('Sebagai anggota{enter}')
        cy.get('[id="peran[0]"]').select('Ketua')
        cy.get('#select2-status-container').type('Disetujui{enter}')

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }

    // Pengabdian
    else if(menu == "Pengabdian"){
        cy.get('#iduniversitas_label').type('005009')
       // Handle autocompplete
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
        cy.get('#idkelompokbidang_label').type('mesin')
        // Handle autocompplete
        cy.get('.tt-suggestion').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === 'Teknik Mesin') {
				cy.wrap($el).click()
			}
        })
        cy.get('#select2-idskimkegiatan-container').type('Penelitian Fundamental{enter}')
        cy.get('##namakegiatan').type('Perancangan Aset Konten Digital untuk Kegiatan Promosi Agrowisata PT Perkebunan Nusantara VIII')
        cy.get('#select2-tahunusulan-container').type('2018{enter}')
        cy.get('#select2-tahunkegiatan-container').type('2019{enter}')
        cy.get('#tahunke').type('3')
        cy.get('#tglawal').type('30-06-2023')
        cy.get('#select2-kesesuaianroadmap-container').type('Sesuai{downarrow}{enter}')
        cy.get("#select2-idrubrikkegiatan0-container").type('Berdasarkan bidang keahlian{enter}')
        cy.get('[id="peran[0]"]').select('Ketua')
        cy.get('#select2-status-container').type('Disetujui{enter}')

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }
})
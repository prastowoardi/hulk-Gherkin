import { When, Then } from "@badeball/cypress-cucumber-preprocessor"


When("{string} melihat jumlah anggota adalah {string}", (user,jumlah) => {
    // Hitung baris
    cy.get('#table-pegawai > tbody').find('tr').then((row)=>{
        const rowCount = row.length
        cy.log("Jumlah anggota pada riwayat ini : "+ rowCount)
    })
})

When("{string} melihat data {string} ada di list", (user,menu) => {
    // cy.get('.btn-info').click()
    function searchDataInTable(text) {
        cy.get('.table > tbody').find('tr').then((rows) => {
            const isDataFound = Array.from(rows).some((row) => row.innerText.includes(text))
            if (isDataFound) {
                cy.log('DATA DITEMUKAN')
            } else {
                cy.log('DATA TIDAK DITEMUKAN')
            }
        })
    }
    
    if (menu === 'penelitian') {
        searchDataInTable('Metode pengajaran sekolah Montessori.')
    } else if (menu === 'pengabdian') {
        searchDataInTable('Perancangan Aset Konten Digital untuk Kegiatan Promosi Agrowisata PT Perkebunan Nusantara VIII')
    } else if (menu === 'publikasi') {
        searchDataInTable('Judul Baru')
    } else if (menu === 'jabatan tugas') {
        searchDataInTable('Duta Besar')
    } else if (menu === 'anggota profesi'){
        searchDataInTable('PMI')
    }
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
import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} pilih detail data",(user) => {
    cy.get(".table").find(".btn").first().click()
    cy.get(".btn").contains("Edit").click()
})

When("{string} melihat field yang diubah di data {string}", (user,menu) => {
    if(menu == "Publikasi"){
        cy.get('#block-idjenispublikasi > .col-md-7')
            .invoke('text').then((data) => {
            cy.log(data)
            expect(data.trim()).to.eq("Buku lainnya")
        })
        cy.get('#block-judul > .col-md-7').contains('Judul Yang Sudah Diubah')
        cy.get('#block-tglterbit > .col-md-7').contains('30 Juli 2023')
        cy.get('.label').contains('Disetujui')
        cy.get('#table-pegawai > tbody').children().children().contains('Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi')
        cy.get('#table-pegawai > tbody').children().children().contains('Editor')
    }else if(menu == "Penelitian"){

    }else if(menu == "Pengabdian"){
        
    }
})

When("Sudah ada data riwayat {string} yang diubah", (menu) => {
    cy.get(".table").find(".btn").click()
    cy.get(".btn").contains("Edit").click()
    //Publikasi
    if(menu == "Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type('Buku lainnya{enter}')
        cy.get("#judul").type('Judul Terbaru Untuk Publikasi')
        cy.get('#namajurnal').type('Jurnal Terbaik Tahun Ini V 1.1')
        cy.get("#tglterbit").type('01-07-2023')
        cy.get("#select2-idrubrikkegiatan0-container").type('Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}')
        cy.get('[id="peran[0]"]').select('Editor')
        cy.get('[id="corresponding[0]"]').check()

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()

        cy.get('.btn-info').should('include.text','Kembali ke Daftar').click()
    }

    // PENELITIAN
    else if(menu == "Penelitian"){
        cy.get('#iduniversitas_label').type('005009')
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
        cy.get('#idkelompokbidang_label').type('mesin')
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
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
        cy.get('#idkelompokbidang_label').type('mesin')
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

    cy.get('.callout > .row > .col-md-3').contains('Data Akan Diubah').next()
        .invoke('text').then((ubah) => {
            cy.log("Data Diubah : "+ubah)
        })
})
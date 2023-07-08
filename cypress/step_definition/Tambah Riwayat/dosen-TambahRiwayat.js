import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

Given("Dosen menambahkan riwayat {string}", (menu) => {
    cy.visit("gate/login")
    if(menu == "Jabatan Tugas"){
        cy.login(1)
        cy
            .get('.hr > .inner').click()
            .get('#hr').contains('Dosen').should('be.visible').click()
        cy.visit("hr/list_rjabatanstruktural")
        cy.get(".btn").contains('Tambah Baru').click()
    }else if(menu == "Publikasi Karya"){
        cy.login(1)
        cy
            .get('.hr > .inner').click()
            .get('#hr').contains('Dosen').should('be.visible').click()
        cy.visit('hr/list_rpublikasi')
        cy.get(".btn").contains('Tambah Baru').click()
    }else if(menu == "Anggota Profesi"){
        cy.login(1)
        cy
            .get('.hr > .inner').click()
            .get('#hr').contains('Dosen').should('be.visible').click()
        cy.visit('hr/list_ranggotaprofesi')
        cy.get(".btn").contains('Tambah Baru').click()
    }
    
})

When("Dosen mengisi data {string} dengan benar", (menu) => {
    if(menu == "Jabatan Tugas"){
        //Jabatan Tugas
        cy.get('#select2-idjabatantugas-container').click()
        cy.get('.select2-search__field').type("lainnya{enter}")
        //Kategori Kegiatan
        cy.get('#select2-idrubrikkegiatan-container').click()
        cy.get('.select2-search__field').type("duduk{enter}")
        // SK Kegiatan
        cy.get('#iddokumen_label').click()
        cy.get('.odd > .text-center > .btn > .fa').click()

        cy.get('#tglterhitungmulai').type("30-08-2023")
        cy.get('#lokasipenugasan').type("Muara Enim")

        cy.get('.btn-success').contains("Simpan").click()

        cy.get('.modal-footer > .btn-primary').click()
    }else if(menu == "Publikasi Karya"){
        //Jenis Publikasi
        cy.get("#select2-idjenispublikasi-container").type("Prosiding seminar nasional{enter}")

        cy.get("#judul").type("Uji Efektivitas Berbagai Media Tanam untuk Pembibitan Padi Varietas Cisokan dan Batang Piaman")
        cy.get('#namajurnal').type("MEMBANGUN EKOSISTEM PENGETAHUAN DAN INOVASI UNTUK MEWUJUDKAN KESEJAHTERAAN PETANI DAN KEMANDIRIAN PA")
        cy.get("#tglterbit").type("21-07-2023")
        cy.get("#select2-idrubrikkegiatan0-container").type("Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}")
        cy.get('[id="peran[0]"]').select("Penulis")
        cy.get('[id="corresponding[0]"]').check()

        cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
        cy.get('[id="namadokumen[0]"]').type("Ijazah")
        cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.modal-footer > .btn-primary').click()
    }else if(menu == "Anggota Profesi"){
        cy.get("#select2-idrubrikkegiatan-container").type("Tingkat nasional sebagai pengurus aktif{enter}")
        cy.get('#namaorganisasi').type("Sevima")
        cy.get("#peran").type("Wakil Ketua")

        cy.get('.btn-success').contains("Simpan").click()
        cy.get('.btn-primary').click()
    }
    
})

When("Dosen mengisi data {string} dengan mengosongkan {string}", (menu,fieldName) => {
    if(menu == "Jabatan Tugas"){
        if(fieldName == "Jabatan Tugas"){
            cy.addJbtTugas(0)
        }else if(fieldName == "Kategori Kegiatan"){
            cy.addJbtTugas(1)
        }else if(fieldName == "TMT Mulai"){
            cy.addJbtTugas(2)
        }else if(fieldName == "Lokasi Penugasan"){
            cy.addJbtTugas(3)
        }else if(fieldName == "SK Penugasan"){
            cy.visit("hr/list_rjabatanstruktural")
            cy.get(".btn").contains('Tambah Baru').click()
            //Jabatan Tugas
            cy.get('#select2-idjabatantugas-container').click()
            cy.get('.select2-search__field').type("lainnya{enter}")
            //Kategori Kegiatan
            cy.get('#select2-idrubrikkegiatan-container').click()
            cy.get('.select2-search__field').type("duduk{enter}")
        
            cy.get('#tglterhitungmulai').type("18-07-2023")
            cy.get('#lokasipenugasan').type("Jakarta Pusat")
        
            cy.get('.btn-success').contains("Simpan").click()
        
            cy.get('.modal-footer > .btn-primary').click()
        }
    }else if(menu == "Publikasi Karya"){
        if(fieldName == "Jenis Publikasi"){
            cy.addPublikasi(0)
        }else if(fieldName == "Judul"){
            cy.addPublikasi(1)
        }else if(fieldName == "Tanggal Terbit"){
            cy.addPublikasi(2)
        }else if(fieldName == "Kategori Kegiatan"){
            cy.addPublikasi(3)
        }else if(fieldName == "Peran"){
            cy.addPublikasi(4)
        }else if(fieldName == "Corresponding"){
            cy.addPublikasi(5)
        }else if(fieldName == "Dokumen Pendukung"){
            cy.get("#select2-idjenispublikasi-container").type("Prosiding seminar nasional{enter}")

            cy.get("#judul").type("Uji Efektivitas Berbagai Media Tanam untuk Pembibitan Padi Varietas Cisokan dan Batang Piaman")
            cy.get('#namajurnal').type("MEMBANGUN EKOSISTEM PENGETAHUAN DAN INOVASI UNTUK MEWUJUDKAN KESEJAHTERAAN PETANI DAN KEMANDIRIAN PA")
            cy.get("#tglterbit").type("21-07-2023")
            cy.get("#select2-idrubrikkegiatan0-container").type("Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional{enter}")
            cy.get('[id="peran[0]"]').select("Penulis")
            cy.get('[id="corresponding[0]"]').check()

            cy.get(':nth-child(100) > :nth-child(2) > .filedokumen > .form-control').selectFile('cypress/fixtures/File Upload/ijazah.jpg')
            // cy.get('[id="namadokumen[0]"]').type("Ijazah")
            cy.get('[id="select2-idjenisdokumen0-container"]').type("ijazah{enter}")

            cy.get('.btn-success').contains("Simpan").click()
        }
    }else if(menu == "Anggota Profesi"){
        if(fieldName == "Kategori Kegiatan"){
            cy.addAnggotaProfesi(0)
        }else if(fieldName == "Nama Organisasi"){
            cy.addAnggotaProfesi(1)
        }else if(fieldName == "Peran"){
            cy.addAnggotaProfesi(2)
        }
    }
    
})

import { When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} mengisi field {string} dengan {string}", (user,fieldName,fieldValue) => {
    if(fieldName == "Jenis Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type(fieldValue+'{enter}')
    }else if(fieldName == "Judul"){
        cy.get("#judul").type(fieldValue)
    }else if(fieldName == "Tanggal Terbit"){
        cy.get("#tglterbit").type(fieldValue)
    }else if(fieldName == "Kategori Kegiatan"){
        cy.get("#select2-idrubrikkegiatan0-container").type(fieldValue+'{enter}')
    }else if(fieldName == "Peran"){
        cy.get('[id="peran[0]"]').select(fieldValue)
    }else if(fieldName == "Corresponding"){
        if(fieldValue == '1'){
            cy.get('[id="corresponding[0]"]').check()
        }else if(fieldValue == '0'){
    
        }
    }else if(fieldName == "Status Pengajuan"){
        cy.get('#select2-status-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Nama Organisasi"){
        cy.get('#namaorganisasi').type(fieldValue)
    }else if(fieldName == "Mulai Keanggotaan"){
        cy.get('#tglmulai').type(fieldValue)
    }else if(fieldName == "Peran Atas"){
        cy.get('#peran').type(fieldValue)
    }else if(fieldName == "Kategori Kegiatan Atas"){
        cy.get('#select2-idrubrikkegiatan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Jabatan Tugas"){
        cy.get('#select2-idjabatantugas-container').type(fieldValue+'{enter}')
    }else if(fieldName == "TMT Mulai"){
        cy.get('#tglterhitungmulai').type(fieldValue)
    }else if(fieldName == "Modal SK"){
        cy.get('#iddokumen_label').click()
        cy.get('.odd > .text-center > .btn > .fa').click()
    }else if(fieldName == "Lokasi Penugasan"){
        cy.get('#lokasipenugasan').type(fieldValue)
    }else if(fieldName == ""){
        
    }
})
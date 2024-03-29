import { When } from "@badeball/cypress-cucumber-preprocessor"

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
    }else if(fieldName == "TMT Jabatan"){
        cy.get('#tmtmulai').type(fieldValue)
    }else if(fieldName == "Nama Jabatan"){
        cy.get('#select2-idsubfungsional-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Judul Penelitian"){
        cy.get('#judulpenelitian').type(fieldValue)
    }else if(fieldName == "Afiliasi"){
        //    Auto Complete Handle
        cy.get('#iduniversitas_label').type(fieldValue)
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
    }else if(fieldName == "Kelompok Bidang"){
        //    Auto Complete Handle
        cy.get('#idkelompokbidang_label').type(fieldValue)
        cy.get('.tt-suggestion').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === 'Teknik Mesin') {
				cy.wrap($el).click()
			}
        })
    }else if(fieldName == "Jenis SKIM"){
        cy.get('#select2-idskimkegiatan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Tahun Usulan"){
        cy.get('#select2-tahunusulan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Tahun Kegiatan"){
        cy.get('#select2-tahunkegiatan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Tahun Pelaksanaan Ke"){
        cy.get('#tahunke').type(fieldValue)
    }else if(fieldName == "Tanggal Mulai"){
        cy.get('#tglmulai').type(fieldValue)
    }else if(fieldName == "Roadmap"){
        if(fieldValue == "Sesuai"){
            cy.get('#select2-kesesuaianroadmap-container').type(fieldValue+'{downarrow}{enter}')
        }else {
            cy.get('#select2-kesesuaianroadmap-container').type(fieldValue+'{enter}')
        }
    }else if(fieldName == "Dana PT"){
        cy.get('[name="value[0]"]').type(fieldValue)
    }else if(fieldName == "Dana Pemerintah"){
        cy.get('[name="value[1]"]').type(fieldValue)
    }else if(fieldName == "Dana DN"){
        cy.get('[name="value[2]"]').type(fieldValue)
    }else if(fieldName == "Dana LN"){
        cy.get('[name="value[3]"]').type(fieldValue)
    }else if(fieldName == "Judul Kegiatan"){
        cy.get('#namakegiatan').type(fieldValue)
    }else if(fieldName == "Tanggal Awal"){
        cy.get('#tglawal').type(fieldValue)
    }else if(fieldName == "Nama Pegawai 2"){
        // Handle array dan auto complete
        cy.get('[name="idpegawai[1]_label"]').type(fieldValue)
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '0017056602 - SUHADI, S.TP. , M.Si..') {
				cy.wrap($el).click()
			}
        })
    }else if(fieldName == "Kategori Kegiatan Pegawai 2"){
        cy.get(':nth-child(2) > :nth-child(2) > .select2-container > .selection > .select2-selection > #select2-idrubrikkegiatan0-container')
        .type(fieldValue+'{enter}')
    }else if(fieldName == "Peran Pegawai 2"){
        cy.get('[name="peran[1]"]').select(fieldValue)
    }else if(fieldName == "Jenis Kegiatan"){
        cy.get('#select2-idjeniskegiatan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Tingkat"){
        cy.get('#select2-tingkat-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Nama Kegiatan"){
        cy.get('#namakegiatan').type(fieldValue)
    }else if(fieldName == "Instansi"){
        cy.get('#instansi').type(fieldValue)
    }else if(fieldName == "SK Dropdown"){
        cy.get('#select2-iddokumen-container').type(fieldValue+'{enter}')
    }else if(fieldName == "iPeran"){
        cy.get('[name="peran[0]"]').type(fieldValue)
    }else if(fieldName == "iPeran 2"){
        cy.get('[name="peran[1]"]').type(fieldValue)
    }else if(fieldName == ""){
        
    }
})
import { When } from "@badeball/cypress-cucumber-preprocessor"

When("{string} mengubah field {string} dengan {string}", (user,fieldName,fieldValue) => {
    if(fieldName == "Jenis Publikasi"){
        cy.get("#select2-idjenispublikasi-container").type(fieldValue+'{enter}')
    }else if(fieldName == "Judul"){
        cy.get("#judul").clear().type(fieldValue)
    }else if(fieldName == "Tanggal Terbit"){
        cy.get("#tglterbit").clear().type(fieldValue)
    }else if(fieldName == "Kategori Kegiatan"){
        cy.get("#select2-idrubrikkegiatan0-container").type(fieldValue+'{enter}')
    }else if(fieldName == "Peran"){
        cy.get('[id="peran[0]"]').select(fieldValue)
    }else if(fieldName == "Corresponding"){
        if(fieldValue == '1'){
            cy.get('[id="corresponding[0]"]').check()
        }else if(fieldValue == '0'){
            cy.get('[id="corresponding[0]"]').uncheck()
        }
    }else if(fieldName == "Status Pengajuan"){
        cy.get('#select2-status-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Nama Organisasi"){
        cy.get('#namaorganisasi').clear().type(fieldValue)
    }else if(fieldName == "Mulai Keanggotaan"){
        cy.get('#tglmulai').clear().type(fieldValue)
    }else if(fieldName == "Peran Atas"){
        cy.get('#peran').clear().type(fieldValue)
    }else if(fieldName == "Kategori Kegiatan Atas"){
        cy.get('#select2-idrubrikkegiatan-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Jabatan Tugas"){
        cy.get('#select2-idjabatantugas-container').type(fieldValue+'{enter}')
    }else if(fieldName == "TMT Mulai"){
        cy.get('#tglterhitungmulai').clear().type(fieldValue)
    }else if(fieldName == "Modal SK"){
        cy.get('#iddokumen_label').click()
        cy.get('.odd > .text-center > .btn > .fa').click()
    }else if(fieldName == "Lokasi Penugasan"){
        cy.get('#lokasipenugasan').type(fieldValue)
    }else if(fieldName == "TMT Jabatan"){
        cy.get('#tmtmulai').clear().type(fieldValue)
    }else if(fieldName == "Nama Jabatan"){
        cy.get('#select2-idsubfungsional-container').type(fieldValue+'{enter}')
    }else if(fieldName == "Judul Penelitian"){
        cy.get('#judulpenelitian').clear().type(fieldValue)
    }else if(fieldName == "Afiliasi"){
        //    Auto Complete Handle
        cy.get('#iduniversitas_label').clear().type(fieldValue)
        cy.get('.tt-suggestions').each(($el, index, $list) => {
			// $el is a wrapped jQuery element
			if ($el.text() === '005009 - Politeknik Negeri Padang') {
				cy.wrap($el).click()
			}
        })
    }else if(fieldName == "Kelompok Bidang"){
        //    Auto Complete Handle
        cy.get('#idkelompokbidang_label').clear().type(fieldValue)
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
        cy.get('#tahunke').clear().type(fieldValue)
    }else if(fieldName == "Tanggal Mulai"){
        cy.get('#tglmulai').clear().type(fieldValue)
        cy.get('#sc-footer').click()
    }else if(fieldName == "Roadmap"){
        if(fieldValue == "Sesuai"){
            cy.get('#select2-kesesuaianroadmap-container').type(fieldValue+'{downarrow}{enter}')
        }else {
            cy.get('#select2-kesesuaianroadmap-container').type(fieldValue+'{enter}')
        }
    }else if(fieldName == "Dana PT"){
        cy.get('[name="value[0]"]').clear().type(fieldValue)
    }else if(fieldName == "Dana Pemerintah"){
        cy.get('[name="value[1]"]').clear().type(fieldValue)
    }else if(fieldName == "Dana DN"){
        cy.get('[name="value[2]"]').clear().type(fieldValue)
    }else if(fieldName == "Dana LN"){
        cy.get('[name="value[3]"]').clear().type(fieldValue)
    }else if(fieldName == "Judul Kegiatan"){
        cy.get('#namakegiatan').clear().type(fieldValue)
    }else if(fieldName == "Tanggal Awal"){
        cy.get('#tglawal').clear().type(fieldValue)
        cy.get('#sc-footer').click()
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
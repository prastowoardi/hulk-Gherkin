import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor"

When("{string} klik tombol {string}", (user,buttonName) => {
    // Menampung nama tombol dan id / class
    const buttonSelectors = {
        "Tambah": ".btn:contains('Tambah Baru')",
        "Simpan": ".btn-success:contains('Simpan')",
        "Ya, Yakin": ".modal-footer > .btn-primary",
        "Sister": ".btn:contains('Sister')",
        "Unduh Data": ":nth-child(1) > .text-left:contains('Unduh Data')",
        "Unduh": ".btn:contains('Unduh')",
        "Sinkronisasi": ".dropdown-menu:contains('Sinkronisasi')",
        "Tambah Anggota": "#table-pegawai > thead > tr > [style='width: 30px'] > .btn",
        "Log Pegawai": ":nth-child(3) > .text-left:contains('Log Sinkronisasi')",
        "Tambah Penerima": "[style='width: 30px'] > .btn"
      }
      
      const selector = buttonSelectors[buttonName]
      if (selector) {
        cy.get(selector).click()
      } else {
        // Handle the case when the buttonName doesn't match any entry in the buttonSelectors object
        cy.log("Tombol " + buttonName + " tidak ditemukan / ID tombol multiple !")
      }
})
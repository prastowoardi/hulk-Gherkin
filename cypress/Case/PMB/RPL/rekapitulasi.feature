Feature: Rekapitulasi pendaftar RPL

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "PMB"
        * "Admin" menuju ke halaman "spmb/repp_penerimaanrpl"
    
    Scenario: Melihat rekapitulasi pendaftar RPL
        When User klik tombol tampilkan

    Scenario: Melihat rekapitulasi pendaftar RPL di tab baru
        When User klik tombol lihat di tab baru 
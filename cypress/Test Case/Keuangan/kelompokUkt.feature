Feature: Buat kelompok UKT

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "Keuangan"
    
    Scenario: Positif - Menambahkan kelompok UKT
        When "Admin" menuju ke halaman "keuangan/ms_kelompokukt" 
        * Admin klik tombol "Tambah"
        * Admin mengisi field "Kode" dengan "A"
        * Admin mengisi field "Nama" dengan "UKT 1"
        * Admin mengisi field "KIP Kuliah" dengan "0"
        * Admin klik tombol "iSimpan"
        * Admin klik tombol "Tambah"
        * Admin mengisi field "Kode" dengan "B"
        * Admin mengisi field "Nama" dengan "UKT 2"
        * Admin mengisi field "KIP Kuliah" dengan "0"
        * Admin klik tombol "iSimpan"
        * Admin klik tombol "Tambah"
        * Admin mengisi field "Kode" dengan "C"
        * Admin mengisi field "Nama" dengan "UKT 3"
        * Admin mengisi field "KIP Kuliah" dengan "0"
        * Admin klik tombol "iSimpan"
        * Admin klik tombol "Tambah"
        * Admin mengisi field "Kode" dengan "D"
        * Admin mengisi field "Nama" dengan "UKT 4"
        * Admin mengisi field "KIP Kuliah" dengan "0"
        * Admin klik tombol "iSimpan"
        Then Admin melihat alert "Berhasil"
        * Admin melihat data ada di list ukt

    Scenario: Positif - Menghapus kelompok UKT 4
        When "Admin" menuju ke halaman "keuangan/ms_kelompokukt" 
        * Admin melihat data ada di list ukt
        * Admin menghapus data "UKT 4"
        * "Admin" klik tombol "Ya, Yakin"
        Then Admin melihat alert "Hapus"
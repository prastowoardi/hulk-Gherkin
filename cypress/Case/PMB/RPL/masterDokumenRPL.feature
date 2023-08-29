Feature: Admin Membuat Master Data

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "PMB"
        * "Admin" menuju ke halaman "spmb/ms_dokumenrpl"

    Scenario: Positif - Admin menambahkan data master dokumen RPL
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "<kode>"
        * Admin isi "nama dokumen" dengan "<nama>"
        * Admin "simpan" data
        * Admin melihat informasi "berhasil tambah"

Examples:
    | kode| nama      |
    | A4  | Sertifikat    |
    | A5  | Pas Foto |
    | A6  | Scan KK  |

    Scenario: Negatif - Admin menambahkan data master dokumen RPL tanpa kode
        When Admin klik tombol "Tambah"
        * Admin isi "nama dokumen" dengan "Ijazah"
        * Admin "simpan" data
        * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Admin menambahkan data master dokumen RPL tanpa nama
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "A10"
        * Admin "simpan" data
        * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Admin menambahkan data master dokumen RPL data duplikat
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "A1"
        * Admin isi "nama dokumen" dengan "Ijazah"
        * Admin "simpan" data
        # * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Admin menambahkan data master dokumen RPL dengan kode >10 karakter
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "ABCDE123456"
        * Admin isi "nama dokumen" dengan "Ijazah"
        * Admin "simpan" data

    Scenario: Positif - Admin mengubah data master dokumen RPL
        When Admin mencari data "Sertifikat" lalu klik edit
        * Admin ubah isi "kode dokumen" dengan "A3 Edited"
        * Admin ubah isi "nama dokumen" dengan "Sertifikat Edited"
        * Admin "simpan edit" data
        * Admin melihat informasi "berhasil edit"

    Scenario: Positif - Admin menambah data master dokumen RPL dengan data yang sama
        When Admin klik tombol "Tambah"
        * Admin ubah isi "kode dokumen" dengan "A3"
        * Admin ubah isi "nama dokumen" dengan "Sertifikat"
        * Admin "simpan" data
        * Admin melihat informasi "duplikat"
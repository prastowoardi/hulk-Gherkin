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
    | kode | nama           |
    | SRT  | Sertifikat     |
    | PGH  | Penghargaan    |
    | REF  | Surat Referensi|
    | BLN  | Bukti Lain     |

    Scenario: Negatif - Admin menambahkan data master dokumen RPL tanpa kode
        When Admin klik tombol "Tambah"
        * Admin isi "nama dokumen" dengan "SKCK"
        * Admin "simpan" data
        * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Admin menambahkan data master dokumen RPL tanpa nama
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "A10"
        * Admin "simpan" data
        * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Positif - Admin mengubah data master dokumen RPL
        When Admin mencari data "Sertifikat" lalu klik "edit"
        * Admin ubah isi "kode dokumen" dengan "SRT Edited"
        * Admin ubah isi "nama dokumen" dengan "Sertifikat Edited"
        * Admin "simpan edit" data
        * Admin melihat informasi "berhasil edit"

    Scenario: Negatif - Admin menambah data master dokumen RPL dengan kode yang sama
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "IJZ"
        * Admin isi "nama dokumen" dengan "Ijazah"
        * Admin "simpan" data
        * Admin melihat informasi "duplikat tambah"

    Scenario: Positif - Admin mengubah data master dokumen RPL dengan kode yang sama
        When Admin mencari data "Sertifikat" lalu klik "edit"
        * Admin ubah isi "kode dokumen" dengan "IJZ"
        * Admin "simpan edit" data
        * Admin melihat informasi "duplikat edit"

    Scenario: Positif - Admin tidak bisa mengubah kode 3 data wajib (transkrip, ijazah, silabus)
        When Admin mencari data "Silabus" lalu klik "edit"
        * Cek komponen "kode dokumen" pada data

    Scenario: Positif - Tombol hapus 3 data wajib (transkrip, ijazah, silabus) tidak ada
        When Admin mencari data "Transkrip" lalu klik "hapus"

    Scenario: Positif - Admin menghapus data master dokumen RPL dengan data yang sama
        When Admin mencari data "Bukti Lain" lalu klik "hapus"
        * "Admin" klik tombol "Ya, Yakin"
        * Admin melihat informasi "hapus berhasil"
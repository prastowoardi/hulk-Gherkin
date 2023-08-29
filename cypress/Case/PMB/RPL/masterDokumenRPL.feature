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

Examples:
    | kode| nama      |
    | A1  | Ijazah    |
    | A2  | Transkrip |
    | A3  | Silabus   |

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
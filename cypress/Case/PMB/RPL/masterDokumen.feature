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
    | A2  | Paklaring |

    Scenario: Negatif - Admin menambahkan data master dokumen RPL
        When Admin klik tombol "Tambah"
        * Admin isi "kode dokumen" dengan "<kode>"
        * Admin isi "nama dokumen" dengan "<nama>"
        * Admin "simpan" data
        # * "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"


Examples:
    | kode | nama   |
    | null | Ijazah |
    | A2   | null   |
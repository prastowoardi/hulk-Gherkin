Feature: Admin menambah riwayat jabatan fungsional

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"

    Scenario: Positif - Menambahkan data dengan benar
        When "Admin" menuju ke halaman "/hr/list_rsubfungsional/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Nama Jabatan" dengan "lektor (200)"
        * "Admin" mengisi field "TMT Jabatan" dengan "20-05-2023"
        * "Admin" mengisi field "Dropdown SK" dengan ""
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
Feature: Setting RPL di administrasi aplikasi

    Background: 
        Given "Admin Support Sevima" masuk ke siakad
        * "AdminSupport" masuk ke modul "Aplikasi"

    Scenario: Mengubah akun sister ke stikes bwi
        When "Admin" menuju ke halaman "admin/ms_setting"
        * Admin ubah filter Kelompok dengan "Penerimaan Mahasiswa Baru"
        * Admin mengaktifkan servis RPL
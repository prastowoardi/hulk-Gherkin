Feature: Setting RPL di administrasi aplikasi

    Background: 
        Given "Admin" masuk ke siakad
        * "SuperAdmin" masuk ke modul "Aplikasi"

    Scenario: Mengubah akun sister ke stikes bwi
        When "Admin" menuju ke halaman "admin/ms_setting"
        * Admin ubah filter Kelompok dengan "Plugin / Addon"
        * Admin mengaktifkan servis RPL
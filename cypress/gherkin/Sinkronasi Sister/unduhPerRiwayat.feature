Feature: Unduh Data SISTER

    Background: 
        Given User Login Sebagai "Admin PT"

    Scenario: Admin mengunduh data riwayat Publikasi Karya
        When Admin akses halaman "hr/list_rpublikasi/7"
        * Admin klik tombol SISTER
        * Admin klik tombol Unduh Data
        * Admin melihat modal konfirmasi
        * Admin klik tombol Ya, Yakin
        Then Admin melihat alert unduh riwayat "Publikasi Karya"

    Scenario: Admin mengunduh data riwayat Jabatan Tugas
        When Admin akses halaman "hr/list_rjabatanstruktural/7"
        * Admin klik tombol SISTER
        * Admin klik tombol Unduh Data
        * Admin melihat modal konfirmasi
        * Admin klik tombol Ya, Yakin
        Then Admin melihat alert unduh riwayat "Jabatan Tugas"
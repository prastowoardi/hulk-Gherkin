Feature: Unduh Data SISTER per Riwayat

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"

    Scenario: Admin mengunduh data riwayat Publikasi Karya
        When "Admin" menuju ke halaman "hr/list_rpublikasi/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"

    Scenario: Admin mengunduh data riwayat Jabatan Tugas
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"

    Scenario: Admin mengunduh data riwayat Anggota Profesi
        When "Admin" menuju ke halaman "/hr/list_ranggotaprofesi/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"

    Scenario: Admin mengunduh data riwayat Jabatan Fungsional
        When "Admin" menuju ke halaman "/hr/list_rsubfungsional/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"

    Scenario: Admin mengunduh data riwayat Jabatan Fungsional
        When "Admin" menuju ke halaman "/hr/list_rpenelitian/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"

    Scenario: Admin mengunduh data riwayat Jabatan Fungsional
        When "Admin" menuju ke halaman "/hr/list_rpkm/7"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Unduh Data"
        * "Admin" melihat modal "Konfirmasi"
        Then "Admin" menunggu proses "Unduh"
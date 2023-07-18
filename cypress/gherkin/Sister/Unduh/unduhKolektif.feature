Feature: Unduh Data SISTER per Riwayat

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"

    Scenario: Admin mengunduh data riwayat secara kolektif
        When "Admin" menuju ke halaman "/hr/list_syncsister"
        * "Admin" klik tombol "Unduh"
        * "Admin" klik tombol "Ya, Yakin"
        # * "Admin" melihat modal "Progress"
        Then "Admin" melihat alert "Unduh"
        * "Admin" klik tombol "Lihat Log"
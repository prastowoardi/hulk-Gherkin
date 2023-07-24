Feature: Unduh Data SISTER per Riwayat

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"

    Scenario: Admin mengirim data riwayat Publikasi Karya dengan tidak ada perubahan
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" menunggu proses "Kirim"
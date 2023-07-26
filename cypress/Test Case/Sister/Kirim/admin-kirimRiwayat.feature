Feature: Kirim Data ke SISTER per Riwayat

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
         
    Scenario: Admin mengirim data baru ke sister
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * Sudah ada data riwayat "Publikasi" baru dengan status disetujui
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"
        
    Scenario: Admin mengirim data yang diubah ke sister
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * Sudah ada data riwayat "Publikasi" yang diubah
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"

    Scenario: Admin mengirim data yang dihapus ke sister
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * Sudah ada data riwayat "Publikasi" yang dihapus
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"

    Scenario: Admin mengirim data riwayat Penelitian dengan tidak ada perubahan
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" menunggu proses "Kirim"   

    Scenario: Admin mengirim data baru ke sister
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * Sudah ada data riwayat "Penelitian" baru dengan status disetujui
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"
        
    Scenario: Admin mengirim data yang diubah ke sister
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * Sudah ada data riwayat "Penelitian" yang diubah
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"

    Scenario: Admin mengirim data yang dihapus ke sister
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * Sudah ada data riwayat "Penelitian" yang dihapus
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"

    Scenario: Admin mengirim data riwayat Pengabdian dengan tidak ada perubahan
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" menunggu proses "Kirim" 

    Scenario: Admin mengirim data baru ke sister
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * Sudah ada data riwayat "Pengabdian" baru dengan status disetujui
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"
        
    Scenario: Admin mengirim data yang diubah ke sister
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * Sudah ada data riwayat "Pengabdian" yang diubah
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"

    Scenario: Admin mengirim data yang dihapus ke sister
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * Sudah ada data riwayat "Pengabdian" yang dihapus
        * "Admin" klik tombol "Sister"
        * "Admin" klik tombol "Sinkronisasi"
        * "Admin" melihat modal "Konfirmasi"
        * "Admin" klik tombol "Ya, Yakin"
        * "Admin" menunggu proses "Kirim"
        * "Admin" melihat jumlah data yang di "Kirim Data"
        * "Admin" menuju ke halaman "hr/list_logsister"
        Then "Admin" melihat jumlah data berhasil "Kirim"
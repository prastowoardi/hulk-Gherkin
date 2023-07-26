Feature: Admin mengubah riwayat penelitian

Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Mengubah data dengan benar
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data      
        * "Admin" mengubah field "Afiliasi" dengan "005009"
        * "Admin" mengubah field "Kelompok Bidang" dengan "mesin"
        * "Admin" mengubah field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Admin" mengubah field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Admin" mengubah field "Tahun Usulan" dengan "2018"
        * "Admin" mengubah field "Tahun Kegiatan" dengan "2019"
        * "Admin" mengubah field "Tahun Pelaksanaan Ke" dengan "3"
        * "Admin" mengubah field "Tanggal Mulai" dengan "30-06-2023"
        * "Admin" mengubah field "Roadmap" dengan "Sesuai"
        * "Admin" mengubah field "Status Pengajuan" dengan "Disetujui"
        * "Admin" mengubah field "Dana PT" dengan "8900000"
        * "Admin" mengubah field "Dana LN" dengan "440000"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Admin" mengubah field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        * "Admin" melihat field yang diubah di data "Publikasi" 

    Scenario: Negatif - Mengosongkan field perguruan tinggi afiliasi
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Afiliasi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field kelompok bidang
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Kelompok Bidang"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field jenis skim
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Jenis SKIM"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field judul penelitian
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Judul Penelitian"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun usulan
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Tahun Usulan"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun kegiatan
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Tahun Kegiatan"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun pelaksanaan ke
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Tahun Pelaksanaan Ke"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tanggal mulai
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Tanggal Mulai"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field roadmap
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" pilih detail data        
        * "Admin" mengosongkan field "Roadmap"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
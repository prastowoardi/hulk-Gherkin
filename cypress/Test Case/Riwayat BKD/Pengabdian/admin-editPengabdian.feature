Feature: Admin Mengubah riwayat pengabdian

Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Mengubah data dengan benar
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengubah field "Afiliasi" dengan "005009"
        * Admin mengubah field "Kelompok Bidang" dengan "mesin"
        * Admin mengubah field "Jenis SKIM" dengan "Ipteks"
        * Admin mengubah field "Judul Kegiatan" dengan "Perancangan Aset Konten Digital untuk Kegiatan Promosi Agrowisata PT Perkebunan Nusantara VIII"
        * Admin mengubah field "Tahun Usulan" dengan "2020"
        * Admin mengubah field "Tahun Kegiatan" dengan "2021"
        * Admin mengubah field "Tahun Pelaksanaan Ke" dengan "1"
        * Admin mengubah field "Tanggal Awal" dengan "30-10-2023"
        * Admin mengubah field "Roadmap" dengan "Sesuai"
        * Admin mengubah field "Status Pengajuan" dengan "Disetujui"
        * Admin mengubah field "Dana PT" dengan "8900000"
        * Admin mengubah field "Dana LN" dengan "440000"
        * Admin mengubah field "Kategori Kegiatan" dengan "Berdasarkan bidang keahlian"
        * Admin mengubah field "Peran" dengan "Anggota"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        * "Admin" melihat field yang diubah di data "Pengabdian"

    Scenario: Negatif - Mengosongkan field perguruan tinggi afiliasi
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data 
        * Admin mengosongkan field "Afiliasi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field kelompok bidang
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengosongkan field "Kelompok Bidang"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field jenis skim
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengubah field "Jenis SKIM" dengan "-- Pilih Jenis SKIM-- "
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field judul penekegiatan
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengosongkan field "Judul Kegiatan"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun usulan
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengubah field "Tahun Usulan" dengan "-- Pilih Tahun Susulan --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun kegiatan
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengubah field "Tahun Kegiatan" dengan "-- Pilih Tahun Kegiatan --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tahun pelaksanaan ke
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengosongkan field "Tahun Pelaksanaan Ke"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field tanggal Awal
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengosongkan field "Tanggal Awal"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field roadmap
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data         
        * Admin mengubah field "Peran" dengan "-- Pilih Peran --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data
        * Admin mengubah field "Kategori Kegiatan" dengan "-- Pilih Kategori Kegiatan --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field peran
        When "Admin" menuju ke halaman "hr/list_rpkm/1"
        * "Admin" pilih detail data
        * Admin mengubah field "Peran" dengan "-- Pilih Peran --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
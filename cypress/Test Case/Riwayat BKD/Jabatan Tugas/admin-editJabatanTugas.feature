Feature: Admin menambah riwayat jabatan tugas

Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Mengubah data dengan benar
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin Mengubah field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * Admin Mengubah field "Jabatan Tugas" dengan "Hakim MA"
        * Admin Mengubah field "Modal SK" dengan "Surat Keputusan"
        * Admin Mengubah field "TMT Mulai" dengan "22-03-2023"
        * Admin Mengubah field "Lokasi Penugasan" dengan "Ballroom Baru"
        * Admin Mengubah field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"

    Scenario: Negatif - Mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin mengubah field "Kategori Kegiatan" dengan "-- Pilih Kategori Kegiatan --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field jabatan tugas
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin Mengubah field "Jabatan Tugas" dengan "-- Pilih Jabatan Tugas --"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field sk
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin mengosongkan field "Modal SK"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field tmt mulai
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin mengosongkan field "TMT Mulai"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field lokasi penugasan
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" pilih detail data   
        * Admin mengosongkan field "Lokasi Penugasan"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
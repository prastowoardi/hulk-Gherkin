Feature: Admin mengubah riwayat publikasi

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Mengubah data dengan benar
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" mengubah field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        * "Admin" melihat field yang diubah di data "Publikasi" 

    Scenario: Negatif - Mengosongkan field jenis publikasi
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Jenis Publikasi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengosongkan field judul
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Judul"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field tanggal terbit
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Tanggal Terbit"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Kategori Kegiatan"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field peran
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengosongkan field "Peran"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengosongkan field corresponding
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Corresponding" dengan "0"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian Corresponding Author"

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

    Scenario: Negatif - Mengubah data dengan mengosongkan field jenis publikasi
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Mengubah data dengan mengosongkan field judul
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengubah data dengan mengosongkan field tanggal terbit
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengubah data dengan mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengubah data dengan mengosongkan field peran
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Mengubah data dengan mengosongkan field corresponding
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" pilih detail data
        * "Admin" mengubah field "Jenis Publikasi" dengan "Buku Lainnya"
        * "Admin" mengubah field "Judul" dengan "Judul Yang Sudah Diubah"
        * "Admin" mengubah field "Tanggal Terbit" dengan "30-07-2023"
        * "Admin" mengubah field "Kategori Kegiatan" dengan "Menghasilkan karya ilmiah yang diterbitkan dalam jurnal internasional bereputasi"
        * "Admin" mengubah field "Peran" dengan "Editor"
        * "Admin" mengubah field "Corresponding" dengan "0"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian Corresponding Author"

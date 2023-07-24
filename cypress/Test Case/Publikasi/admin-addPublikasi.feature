Feature: Admin menambah riwayat publikasi

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field jenis publikasi
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field judul
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field tanggal terbit
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field peran
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Corresponding" dengan "1"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field corresponding
        When "Admin" menuju ke halaman "hr/list_rpublikasi/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Admin" mengisi field "Judul" dengan "Judul Baru"
        * "Admin" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Admin" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Admin" mengisi field "Peran" dengan "Penulis"
        * "Admin" mengisi field "Corresponding" dengan "0"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian Corresponding Author"

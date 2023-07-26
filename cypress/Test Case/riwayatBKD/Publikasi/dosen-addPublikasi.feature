Feature: Dosen menambah riwayat publikasi

    Background:
        Given "Dosen" masuk ke siakad
        * "Dosen" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat alert "Berhasil"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field jenis publikasi
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field judul
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field tanggal terbit
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field peran
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Corresponding" dengan "1"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field corresponding
        When "Dosen" menuju ke halaman "hr/list_rpublikasi/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Jenis Publikasi" dengan "Artikel Ilmiah"
        * "Dosen" mengisi field "Judul" dengan "Judul Baru"
        * "Dosen" mengisi field "Tanggal Terbit" dengan "18-07-2023"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Hasil penelitian atau hasil pemikiran yang Dipresentasikan secara oral dan dimuat dalam prosiding yang dipublikasikan (ber ISSN/ISBN): Nasional"
        * "Dosen" mengisi field "Peran" dengan "Penulis"
        * "Dosen" mengisi field "Corresponding" dengan "0"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

Feature: Dosen menambah riwayat anggota profesi

    Background:
        Given "Dosen" masuk ke siakad
        * "Dosen" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Dosen" menuju ke halaman "hr/list_ranggotaprofesi/"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Dosen mengisi field "Nama Organisasi" dengan "PMI"
        * Dosen mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Dosen mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat alert "Berhasil"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Dosen" menuju ke halaman "hr/list_ranggotaprofesi/"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Nama Organisasi" dengan "PMI"
        * Dosen mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Dosen mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field nama organisasi
        When "Dosen" menuju ke halaman "hr/list_ranggotaprofesi/"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Dosen mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Dosen mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field peran
        When "Dosen" menuju ke halaman "hr/list_ranggotaprofesi/"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Dosen mengisi field "Nama Organisasi" dengan "PMI"
        * Dosen mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field mulai keanggotaan
        When "Dosen" menuju ke halaman "hr/list_ranggotaprofesi/"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Dosen mengisi field "Nama Organisasi" dengan "PMI"
        * Dosen mengisi field "Peran Atas" dengan "Ketua Aktif"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
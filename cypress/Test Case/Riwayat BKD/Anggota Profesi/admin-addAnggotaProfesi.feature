Feature: Admin menambah riwayat anggota profesi

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Admin" menuju ke halaman "hr/list_ranggotaprofesi/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Admin mengisi field "Nama Organisasi" dengan "PMI"
        * Admin mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Admin mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        * "Admin" melihat data "anggota profesi" ada di list

    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_ranggotaprofesi/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Nama Organisasi" dengan "PMI"
        * Admin mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Admin mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field nama organisasi
        When "Admin" menuju ke halaman "hr/list_ranggotaprofesi/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Admin mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Admin mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field peran
        When "Admin" menuju ke halaman "hr/list_ranggotaprofesi/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Admin mengisi field "Nama Organisasi" dengan "PMI"
        * Admin mengisi field "Mulai Keanggotaan" dengan "30-07-2023"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field mulai keanggotaan
        When "Admin" menuju ke halaman "hr/list_ranggotaprofesi/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Kategori Kegiatan Atas" dengan "Tingkat nasional sebagai pengurus"
        * Admin mengisi field "Nama Organisasi" dengan "PMI"
        * Admin mengisi field "Peran Atas" dengan "Ketua Aktif"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
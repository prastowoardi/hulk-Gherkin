Feature: Admin Menambah data Jabatan Tugas

    Background: 
        Given Admin menambahkan riwayat "Jabatan Tugas"

    Scenario: Positif : Admin menambahkan data jabatan tugas
        When Admin mengisi data "Jabatan Tugas" dengan benar
        Then "User" berhasil menambahkan data "Jabatan Tugas"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Jabatan Tugas
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "Jabatan Tugas"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Kategori Kegiatan
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "Kategori Kegiatan"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field SK Penugasan
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "SK Penugasan"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field TMT Mulai
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "TMT Mulai"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Lokasi Penugasan
        # Given User login sebagai "Admin"
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "Lokasi Penugasan"
        Then "Admin" melihat modal informasi
    
    Scenario: Negatif : Admin menambahkan data tetapi dokumen pendukung tidak lengkap 
        When Admin mengisi data "Jabatan Tugas" dengan mengosongkan "Dokumen Pendukung"
        Then "Admin" melihat modal informasi
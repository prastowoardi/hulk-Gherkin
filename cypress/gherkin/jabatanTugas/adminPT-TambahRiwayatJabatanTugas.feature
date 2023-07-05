Feature: Admin Menambah data Jabatan Tugas

    # Background: 
    #     Given User login sebagai "Admin" dan menambahkan data jabatan tugas

    Scenario: Positif : Admin menambahkan data jabatan tugas
        Given User login sebagai "Admin"
        When Admin mengisi form dengan benar
        Then User berhasil menambahkan data

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Jabatan Tugas
        Given User login sebagai "Admin"
        When Admin mengisi form dengan mengosongkan "Jabatan Tugas"
        Then Admin melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Kategori Kegiatan
        Given User login sebagai "Admin"
        When Admin mengisi form dengan mengosongkan "Kategori Kegiatan"
        Then Admin melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field SK Penugasan
        Given User login sebagai "Admin"
        When Admin mengisi form dengan mengosongkan "SK Penugasan"
        Then Admin melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field TMT Mulai
        Given User login sebagai "Admin"
        When Admin mengisi form dengan mengosongkan "TMT Mulai"
        Then Admin melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Lokasi Penugasan
        Given User login sebagai "Admin"
        When Admin mengisi form dengan mengosongkan "Lokasi Penugasan"
        Then Admin melihat modal informasi

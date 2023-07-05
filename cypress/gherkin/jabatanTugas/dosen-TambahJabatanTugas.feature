Feature: Dosen Menambah data Jabatan Tugas

    # Background: 
    #     Given User login sebagai "Admin" dan menambahkan data jabatan tugas


    Scenario: Positif : Dosen menambahkan data jabatan tugas
        Given User login sebagai "Dosen"
        When Dosen mengisi form dengan benar
        Then User berhasil menambahkan data

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Jabatan Tugas
        Given User login sebagai "Admin"
        When Dosen mengisi form dengan mengosongkan "Jabatan Tugas"
        Then Dosen melihat modal informasi

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Kategori Kegiatan
        Given User login sebagai "Admin"
        When Dosen mengisi form dengan mengosongkan "Kategori Kegiatan"
        Then Dosen melihat modal informasi

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field SK Penugasan
        Given User login sebagai "Admin"
        When Dosen mengisi form dengan mengosongkan "SK Penugasan"
        Then Dosen melihat modal informasi

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field TMT Mulai
        Given User login sebagai "Admin"
        When Dosen mengisi form dengan mengosongkan "TMT Mulai"
        Then Dosen melihat modal informasi

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Lokasi Penugasan
        Given User login sebagai "Admin"
        When Dosen mengisi form dengan mengosongkan "Lokasi Penugasan"
        Then Dosen melihat modal informasi
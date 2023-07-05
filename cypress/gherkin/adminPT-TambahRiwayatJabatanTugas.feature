Feature: User Login

    # Background: 
    #     Given User login sebagai "Admin" dan menambahkan data jabatan tugas

    Scenario: (+)Admin menambahkan data jabatan tugas
        Given User login sebagai "Admin"
        When Admin klik tombol tambah 
        * field "Jabatan Tugas" dengan data "lainnya"
        * field "Kategori Kegiatan" dengan data "duduk"
        Then User berhasil menambahkan data

    # Scenario: (-)Admin mengosongkan field 'Jabatan Tugas'
    #     Given User login sebagai "Admin"
    #     When Admin mengisi form
    #     * 
    #     Then User berhasil menambahkan data

    # Scenario: (+)Dosen menambahkan data jabatan tugas
    #     Given User login sebagai "Dosen"
    #     When Dosen mengisi form dengan benar
    #     Then User berhasil menambahkan data
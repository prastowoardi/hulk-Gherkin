Feature: User Login

    # Background: 
    #     Given User login sebagai "Admin" dan menambahkan data jabatan tugas

    Scenario: Admin menambahkan data jabatan tugas
        Given User login sebagai "Admin"
        When Admin mengisi form dengan benar
        Then User berhasil menambahkan data

    Scenario: Dosen menambahkan data jabatan tugas
        Given User login sebagai "Dosen"
        When Dosen mengisi form dengan benar
        Then User berhasil menambahkan data
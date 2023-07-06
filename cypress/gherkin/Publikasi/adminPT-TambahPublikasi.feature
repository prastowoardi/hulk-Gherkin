Feature: Admin menambah data Publikasi Karya

    Background: 
        Given Admin menambahkan riwayat "Publikasi Karya"
    
    Scenario: Positif : Admin menambahkan data publikasi
        When User mengisi data "Publikasi Karya" dengan benar
        Then "Admin" berhasil menambahkan data "Publikasi Karya"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Jenis Publikasi"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Judul"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Tanggal Terbit"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Kategori Kegiatan"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Peran"
        Then "Admin" melihat modal informasi

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field jenis publikasi 
        When Admin mengisi data "Publikasi" dengan mengosongkan "Corresponding"
        Then "Admin" melihat modal informasi
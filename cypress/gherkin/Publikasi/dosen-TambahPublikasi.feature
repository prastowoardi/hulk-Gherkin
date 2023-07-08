Feature: Admin menambah data Publikasi Karya

    Background: 
        Given Dosen menambahkan riwayat "Publikasi Karya"
    
    Scenario: Positif : Dosen menambahkan data publikasi
        When Dosen mengisi data "Publikasi Karya" dengan benar
        Then "Dosen" berhasil menambahkan data "Publikasi Karya"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field jenis publikasi 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Jenis Publikasi"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field judul 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Judul"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field tanggal terbit 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Tanggal Terbit"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field kategori kegiatan 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Kategori Kegiatan"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field peran 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Peran"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field corresponding 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Corresponding"
        Then "Dosen" melihat modal informasi "Corresponding"

    Scenario: Negatif : Dosen menambahkan data tetapi dokumen pendukung tidak lengkap 
        When Dosen mengisi data "Publikasi Karya" dengan mengosongkan "Dokumen Pendukung"
        Then "Dosen" melihat modal informasi "Wajib isi"
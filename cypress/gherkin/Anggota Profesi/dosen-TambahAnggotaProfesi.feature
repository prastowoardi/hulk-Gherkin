Feature: Dosen Menambah data Anggota Profesi

    Background: 
        Given Dosen menambahkan riwayat "Anggota Profesi"

    Scenario: Positif : Admin menambahkan data anggota profesi
        When Dosen mengisi data "Anggota Profesi" dengan benar
        Then "Dosen" berhasil menambahkan data "Anggota Profesi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Kategori Kegiatan
        When Dosen mengisi data "Anggota Profesi" dengan mengosongkan "Kategori Kegiatan"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Nama Organisasi
        When Dosen mengisi data "Anggota Profesi" dengan mengosongkan "Nama Organisasi"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Peran
        When Dosen mengisi data "Anggota Profesi" dengan mengosongkan "Peran"
        Then "Dosen" melihat modal informasi "Wajib isi"
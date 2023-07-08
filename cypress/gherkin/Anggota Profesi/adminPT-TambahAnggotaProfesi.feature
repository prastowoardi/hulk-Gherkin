Feature: Admin Menambah data Anggota Profesi

    Background: 
        Given Admin menambahkan riwayat "Anggota Profesi"

    Scenario: Positif : Admin menambahkan data anggota profesi
        When Admin mengisi data "Anggota Profesi" dengan benar
        Then "Admin" berhasil menambahkan data "Anggota Profesi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Kategori Kegiatan
        When Admin mengisi data "Anggota Profesi" dengan mengosongkan "Kategori Kegiatan"
        Then "Admin" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Nama Organisasi
        When Admin mengisi data "Anggota Profesi" dengan mengosongkan "Nama Organisasi"
        Then "Admin" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Admin menambahkan data tetapi mengosongkan field Peran
        When Admin mengisi data "Anggota Profesi" dengan mengosongkan "Peran"
        Then "Admin" melihat modal informasi "Wajib isi"
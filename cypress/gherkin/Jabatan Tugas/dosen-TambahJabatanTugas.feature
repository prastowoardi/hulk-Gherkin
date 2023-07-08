Feature: Dosen Menambah data Jabatan Tugas

    Background: 
        Given Dosen menambahkan riwayat "Jabatan Tugas"

    Scenario: Positif : Dosen menambahkan data jabatan tugas
        When Dosen mengisi data "Jabatan Tugas" dengan benar
        Then "Dosen" berhasil menambahkan data

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Jabatan Tugas
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "Jabatan Tugas"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Kategori Kegiatan
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "Kategori Kegiatan"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field SK Penugasan
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "SK Penugasan"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field TMT Mulai
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "TMT Mulai"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Dosen menambahkan data tetapi mengosongkan field Lokasi Penugasan
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "Lokasi Penugasan"
        Then "Dosen" melihat modal informasi "Wajib isi"

    Scenario: Negatif : Admin menambahkan data tetapi dokumen pendukung tidak lengkap 
        When Dosen mengisi data "Jabatan Tugas" dengan mengosongkan "Dokumen Pendukung"
        Then "Dosen" melihat modal informasi "Wajib isi"
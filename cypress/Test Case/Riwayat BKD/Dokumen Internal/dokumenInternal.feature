Feature: Menambahkan dokumen internal

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"
        * "Admin" menuju ke halaman "hr/list_dokumeninternal"
        * Admin klik tombol "Tambah"
    
    Scenario: Membuat dokumen internal sk penunjang lain
        When Admin mengisi "No Dokumen" dengan "DED/2023/12/1212"
        * Admin mengisi "Nama Dokumen" dengan "SK Penunjang Lain"
        * Admin mengisi "Tanggal" dengan "13-03-2023"
        * Admin mengisi "Referensi" dengan "Penunjang Lain"
        * Admin mengisi "Tingkat" dengan "Universitas"
        * Admin mengisi "Status Dokumen" dengan "Lama"
        * Admin mengisi "Pegawai" dengan "Dede Cahyadi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "sk baru"

    Scenario: Membuat dokumen internal sk jabatan tugas
        When Admin mengisi "No Dokumen" dengan "DED/2023/12/1111"
        * Admin mengisi "Nama Dokumen" dengan "SK Jabatan Tugas"
        * Admin mengisi "Tanggal" dengan "13-04-2023"
        * Admin mengisi "Referensi" dengan "Jabatan Struktural"
        * Admin mengisi "Tingkat" dengan "Universitas"
        * Admin mengisi "Status Dokumen" dengan "Lama"
        * Admin mengisi "Pegawai" dengan "Dede Cahyadi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "sk baru"

    Scenario: Membuat dokumen internal sk pengelola jurnal
        When Admin mengisi "No Dokumen" dengan "DED/2023/12/1011"
        * Admin mengisi "Nama Dokumen" dengan "SK Pengelola Jurnal"
        * Admin mengisi "Tanggal" dengan "13-05-2023"
        * Admin mengisi "Referensi" dengan "Pengelola Jurnal"
        * Admin mengisi "Tingkat" dengan "Universitas"
        * Admin mengisi "Status Dokumen" dengan "Lama"
        * Admin mengisi "Pegawai" dengan "Dede Cahyadi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "sk baru"

    Scenario: Membuat dokumen internal sk tugas tambahan
        When Admin mengisi "No Dokumen" dengan "DED/2023/12/1012"
        * Admin mengisi "Nama Dokumen" dengan "SK Tugas Tambahan"
        * Admin mengisi "Tanggal" dengan "13-06-2023"
        * Admin mengisi "Referensi" dengan "Tugas Tambahan"
        * Admin mengisi "Tingkat" dengan "Universitas"
        * Admin mengisi "Status Dokumen" dengan "Lama"
        * Admin mengisi "Pegawai" dengan "Dede Cahyadi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "sk baru"
Feature: Menambahkan dokumen internal

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM"
    
    Scenario: Membuat dokumen internal sk penunjang lain
        When "Admin" menuju ke halaman "hr/list_dokumeninternal"
        * Admin klik tombol "Tambah"
        * Admin mengisi "No Dokumen" dengan "DED/2023/12/1212"
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
        When "Admin" menuju ke halaman "hr/list_dokumeninternal"
        * Admin klik tombol "Tambah"
        * Admin mengisi "No Dokumen" dengan "DED/2023/12/1111"
        * Admin mengisi "Nama Dokumen" dengan "SK Jabatan Tugas"
        * Admin mengisi "Tanggal" dengan "13-03-2023"
        * Admin mengisi "Referensi" dengan "Jabatan Struktural"
        * Admin mengisi "Tingkat" dengan "Universitas"
        * Admin mengisi "Status Dokumen" dengan "Lama"
        * Admin mengisi "Pegawai" dengan "Dede Cahyadi"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "sk baru"
Feature: Buat tarif UKT

    Background: 
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "Keuangan"
    
    Scenario: Positif - Mengecek referensi UKT
        When "Admin" menuju ke halaman "keuangan/ms_jenisakun"
        * Cek referensi UKT 
        Then Admin melihat referensi UKT di tabel
        
    Scenario: Positif - Menambahkan tarif UKT
        When "Admin" menuju ke halaman "keuangan/ms_tarifukt"
        * Admin mengubah filter "periode"
        * Admin mengubah filter "jalur pendaftaran"
        * Admin mengubah filter "gelombang"
        * Admin mengubah filter "sistem kuliah"
        * Admin klik tombol "Tambah"
        * Admin mengisi field "periode masuk" dengan "2023/2024 Gasal"
        * Admin mengisi field "gelombang" dengan "Gelombang 3"
        * Admin mengisi field "sistem kuliah" dengan "Reguler"
        * Admin mengisi field "jalur pendaftaran" dengan "Jalur Test"
        * Admin mengisi field "kelompok ukt" dengan "UKT 2"
        * Admin mengisi field "nominal tarif" dengan "3600000"
        * Admin mengisi field "kuota" dengan "20"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"

    Scenario: Negatif - Menambahkan tarif UKT yang sudah ada
        When "Admin" menuju ke halaman "keuangan/ms_tarifukt"
        * Admin klik tombol "Tambah"
        * Admin mengisi field "periode masuk" dengan "2023/2024 Gasal"
        * Admin mengisi field "gelombang" dengan "Gelombang 1"
        * Admin mengisi field "sistem kuliah" dengan "Reguler"
        * Admin mengisi field "jalur pendaftaran" dengan "Jalur Test"
        * Admin mengisi field "kelompok ukt" dengan "UKT 2"
        * Admin mengisi field "nominal tarif" dengan "3600000"
        * Admin mengisi field "kuota" dengan "20"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then Admin melihat pemberitahuan "duplikat"
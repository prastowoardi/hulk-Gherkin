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

    Scenario: Positif - Menambahkan tarif UKT dengan 3 cicilan
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
        * Admin mengisi field "prodi" dengan "S1 - Hukum"
        * Admin mengisi field "kelompok ukt" dengan "UKT 2"
        * Admin mengisi field "nominal tarif" dengan "3600000"
        * Admin mengisi field "kuota" dengan "20"
        * Admin mengisi field "jumlah cicilan" dengan "3"
        * Admin mengisi field "cicilan 1" dengan "1500000"
        * Admin mengisi field "cicilan 2" dengan "1200000"
        * Admin mengisi field "frekuensi denda" dengan "Bulanan"
        * Admin mengisi field "nominal denda" dengan "100000"
        * Admin mengisi field "max denda" dengan "250000"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then Admin melihat alert "tarif ukt berhasil"

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
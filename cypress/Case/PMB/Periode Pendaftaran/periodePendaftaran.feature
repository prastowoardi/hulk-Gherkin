Feature: Admin Membuat Periode Pendaftaran

    Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "PMB"

    Scenario: Admin membuat Periode Pendaftaran
        When "Admin" menuju ke halaman "spmb/list_periode"
        * Admin klik "tambah periode"
        * Admin isi field "nama" dengan "Jalur RPL"
        * Admin isi field "periode" dengan "2023/2024 Gasal"
        * Admin isi field "gelombang" dengan "Gelombang 3"
        * Admin isi field "jalur" dengan "Jalur Test"
        * Admin isi field "sistem kuliah" dengan "Reguler"
        * Admin isi field "tgl mulai" dengan "01-08-2023"
        * Admin isi field "tgl akhir" dengan "02-01-2024"
        * Admin isi field "akhir finalisasi" dengan "01-01-2024"
        * Admin isi field "awal daftar ulang" dengan "10-08-2023"
        * Admin isi field "akhir daftar ulang" dengan "10-01-2024"
        * Admin isi field "kode pendaftar" dengan "2023.00"
        * Admin klik "Pengaturan"
        * Admin isi field "tampil nilai" dengan "ya"
        * Admin isi field "umumkan nilai" dengan "12-01-2024"
        * Admin isi field "waktu umumkan nilai" dengan "1000"
        * Admin isi field "umumkan lulus" dengan "15-01-2024"
        * Admin isi field "waktu umumkan lulus" dengan "1000"
        * "Admin" klik tombol "Simpan"
        * Admin klik "ya"

        #-- Admin mengatur jenis program --
        * Admin mengatur "jenis program"
        * Admin isi field "jenis program" dengan "IPA"
        * Admin isi field "jumlah prodi" dengan "2"
        * Admin klik "simpan jenis program"

        #-- Admin mengatur program studi 1 --
        * Admin mengatur "program studi"
        * Admin klik "tambah data"
        * Admin isi field "program studi" dengan "akuntansi"
        * Admin isi field "jns program" dengan "IPA"
        * Admin isi field "prefix nim" dengan "A12.2023."
        * Admin isi field "kuota" dengan "10"
        * Admin isi field "pilihan 1" dengan "ya"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"

        #-- Admin mengatur program studi 2 --
        * Admin mengatur "program studi"
        * Admin klik "tambah data"
        * Admin isi field "program studi" dengan "hukum"
        * Admin isi field "jns program" dengan "IPA"
        * Admin isi field "prefix nim" dengan "A15.2023."
        * Admin isi field "kuota" dengan "10"
        * Admin isi field "pilihan 1" dengan "ya"
        * Admin isi field "pilihan 2" dengan "ya"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"

        #-- Admin mengatur program studi 3 --
        * Admin mengatur "program studi"
        * Admin klik "tambah data"
        * Admin isi field "program studi" dengan "teknik informatika"
        * Admin isi field "jns program" dengan "IPA"
        * Admin isi field "prefix nim" dengan "A15.2023."
        * Admin isi field "kuota" dengan "10"
        * Admin isi field "pilihan 1" dengan "ya"
        * Admin isi field "pilihan 2" dengan "ya"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"

        #-- Admin mengatur syarat administrasi --
        * Admin mengatur "syarat pendaftaran"
        * Admin isi field "jenis syarat" dengan "administrasi"
        * Admin isi field "syarat" dengan "kartu keluarga"
        * Admin isi field "wajib" dengan "ya"
        * Admin isi field "upload" dengan "ya"
        * Admin klik "simpan syarat"
        * Admin isi field "syarat" dengan "ijazah/skl"
        * Admin isi field "wajib" dengan "ya"
        * Admin isi field "upload" dengan "ya"
        * Admin klik "simpan syarat x"
        * Admin isi field "syarat" dengan "kartu tanda penduduk"
        * Admin isi field "wajib" dengan "ya"
        * Admin isi field "upload" dengan "ya"
        * Admin klik "simpan syarat x"

        #-- Admin mengatur syarat daftar ulang --
        # * Admin mengatur "syarat pendaftaran"
        * Admin isi field "jenis syarat" dengan "daftar ulang"
        * Admin isi field "syarat" dengan "pas foto"
        * Admin isi field "wajib" dengan "ya"
        * Admin isi field "upload" dengan "ya"
        * Admin klik "simpan syarat"
        * Admin isi field "syarat" dengan "pendukung"
        * Admin isi field "wajib" dengan "ya"
        * Admin isi field "upload" dengan "ya"
        * Admin klik "simpan syarat x"
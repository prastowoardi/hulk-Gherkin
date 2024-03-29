Feature: Admin Membuat Periode Pendaftaran

        Background:
            Given "Admin" masuk ke siakad
            * "Admin" masuk ke modul "PMB"
    
        Scenario: Menambahkan jalur pendaftaran RPL
             When "Admin" menuju ke halaman "spmb/ms_jalurpendaftaran"
            * Admin klik tombol "Tambah"
            * Admin isi field "kode jalur" dengan "99"
            * Admin isi field "nama jalur" dengan "RPL"
            * Admin isi field "jenis pendaftaran" dengan "Rekognisi Pembelajaran Lampau (RPL)"
            * Admin isi field "keterangan jalur" dengan "Rekognisi Pembelajaran Lampau"
            * Admin klik "simpan jalur"

        Scenario: Admin membuat Periode Pendaftaran RPL
             When "Admin" menuju ke halaman "spmb/list_periode"
            * Admin klik "tambah periode"
            * Admin isi field "nama" dengan "Jalur RPL"
            * Admin isi field "periode" dengan "2023/2024 Gasal"
            * Admin isi field "gelombang" dengan "Gelombang 4"
            * Admin isi field "jalur" dengan "RPL"
            * Admin isi field "sistem kuliah" dengan "Reguler"
            * Admin isi field "tgl mulai" dengan "01-08-2023"
            * Admin isi field "tgl akhir" dengan "02-05-2024"
            * Admin isi field "akhir finalisasi" dengan "01-04-2024"
            * Admin isi field "awal daftar ulang" dengan "10-08-2023"
            * Admin isi field "akhir daftar ulang" dengan "10-04-2024"
            * Admin isi field "kode pendaftar" dengan "2023.10"
            * Admin klik "Pengaturan"
            * Admin isi field "tampil nilai" dengan "ya"
            * Admin isi field "umumkan nilai" dengan "12-01-2024"
            * Admin isi field "waktu umumkan nilai" dengan "1000"
            * Admin isi field "umumkan lulus" dengan "15-01-2024"
            * Admin isi field "waktu umumkan lulus" dengan "1000"
            * "Admin" klik tombol "Simpan"
            * Admin klik "ya"

        Scenario: Admin setting prodi dan syarat di jalur RPL
             When "Admin" menuju ke halaman "spmb/list_periode"
            * Admin melihat detail periode "Jalur RPL"

            #-- Admin mengatur program studi 1 --
            * Admin mengatur "program studi"
            * Admin klik "tambah data"
            * Admin isi field "program studi" dengan "akuntansi"
            * Admin isi field "admin prodi" dengan "0428047904 - IRWAN  HERMAWAN, SE., ME"
            * Admin isi field "jns program" dengan "RPL"
            * Admin isi field "prefix nim" dengan "A22.2023."
            * Admin isi field "kuota" dengan "10"

            #-- Admin mengatur syarat dokumen RPL --
            * Admin isi field "transfer kredit" dengan "ya"
            * Admin isi field "perolehan kredit" dengan "ya"

            #--Admin mewajibkan syarat transfer kredit --
            * Admin mewajibkan dokumen "Ijazah" pada syarat transfer kredit

            #-- Admin mengisi dokumen syarat perolehan kredit --
            * Admin mengisi dokumen syarat perolehan kredit

            #-- Admin mengatur program studi 2 --
            * Admin mengatur "program studi"
            * Admin klik "tambah data"
            * Admin isi field "program studi" dengan "hukum"
            * Admin isi field "admin prodi" dengan "0411068302 - FERDY  FERDIAN, SH., MH."
            * Admin isi field "jns program" dengan "RPL"
            * Admin isi field "prefix nim" dengan "A15.2023."
            * Admin isi field "kuota" dengan "10"

            * Admin mengatur "syarat dokumen rpl"
            * Admin isi field "transfer kredit" dengan "ya"

            #--Admin mewajibkan syarat transfer kredit --
            * Admin mewajibkan dokumen "Ijazah" pada syarat transfer kredit

            #-- Admin mengatur program studi  3 --
            * Admin mengatur "program studi"
            * Admin klik "tambah data"
            * Admin isi field "program studi" dengan "teknik informatika"
            * Admin isi field "admin prodi" dengan "9907147829 - RIAN  HIDAYAT, S.Hum, M.I.Kom."
            * Admin isi field "jns program" dengan "IPA"
            * Admin isi field "prefix nim" dengan "A15.2023."
            * Admin isi field "kuota" dengan "10"

            * Admin mengatur "syarat dokumen rpl"
            * Admin isi field "perolehan kredit" dengan "ya"

            #-- Admin mengisi dokumen syarat perolehan kredit --
            * Admin mengisi dokumen syarat perolehan kredit

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
            * Admin isi field "jenis syarat" dengan "daftar ulang"
            * Admin isi field "syarat" dengan "pas foto"
            * Admin isi field "wajib" dengan "ya"
            * Admin isi field "upload" dengan "ya"
            * Admin klik "simpan syarat"
            * Admin isi field "syarat" dengan "pendukung"
            * Admin isi field "wajib" dengan "ya"
            * Admin isi field "upload" dengan "ya"
            * Admin klik "simpan syarat x"

        Scenario: Admin membuat Periode Pendaftaran Biasa
             When "Admin" menuju ke halaman "spmb/list_periode"
            * Admin klik "tambah periode"
            * Admin isi field "nama" dengan "Jalur Biasa"
            * Admin isi field "periode" dengan "2023/2024 Gasal"
            * Admin isi field "gelombang" dengan "Gelombang 2"
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
            * Admin isi field "jenis syarat" dengan "daftar ulang"
            * Admin isi field "syarat" dengan "pas foto"
            * Admin isi field "wajib" dengan "ya"
            * Admin isi field "upload" dengan "ya"
            * Admin klik "simpan syarat"
            * Admin isi field "syarat" dengan "pendukung"
            * Admin isi field "wajib" dengan "ya"
            * Admin isi field "upload" dengan "ya"
            * Admin klik "simpan syarat x"

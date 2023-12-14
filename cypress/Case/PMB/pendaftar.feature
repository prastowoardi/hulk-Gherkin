Feature: User melakukan pendaftaran pada jalur yang dipilih

        Background:
          Given User menuju halaman "spmbfront"

        Scenario: User melakukan pendaftaran pendidikan terakhir sma/smk
          When Pendaftar memilih jenjang "S1" prodi "Akuntansi"
          * Pendaftar memilih jalur pendaftaran "Rekognisi Pembelajaran Lampau"
          * Pendaftar klik tombol isi fomulir pendaftaran 
          * Pendaftar mengisi data "nama pendaftar" dengan "<nama>" di v2
          * Pendaftar mengisi data "jenis kelamin" dengan "<jenis_kelamin>" di v2
          * Pendaftar mengisi data "tempat lahir" dengan "<tempat_lahir>" di v2
          * Pendaftar mengisi data "tgl lahir" dengan "<tgl_lahir>" di v2
          * Pendaftar mengisi data "nik" dengan "<nik>" di v2
          * Pendaftar mengisi data "email" dengan "<email>" di v2
          * Pendaftar mengisi data "no hp" dengan "<no_hp>" di v2
          * Pendaftar mengisi data "pendidikan terakhir" dengan "<pendidikan>" di v2
          * Pendaftar mengisi data "provinsi" dengan "<provinsi>" di v2
          * Pendaftar mengisi data "kab/kota" dengan "<kab_kota>" di v2
          * Pendaftar mengisi data "jenis sekolah" dengan "<jenis_sekolah>" di v2
          * Pendaftar mengisi data "jurusan" dengan "<jurusan>" di v2
          * Pendaftar mengisi data "th lulus" dengan "<th_lulus>" di v2
          * Pendaftar mengisi data "nama sekolah 1" dengan "<nama_sekolah_1>" di v2
          * Pendaftar klik "lanjutkan mendaftar" di v2
          * Pendaftar mengisi data "menyetujui" dengan "<menyetujui>" di v2
          * Pendaftar klik "lanjutkan mendaftar" di v2
          * Pendaftar berhasil daftar di V2
          * Pendaftar mendapatkan "ID Pendaftar"
          * Pendaftar mendapatkan "PIN"
          * Pendaftar klik "masuk sekarang" di v2
          * Pendaftar memasukkan id dan pin
          * Pendaftar klik "masuk" di v2
          * Pendaftar melengkapi identitas
          * Pendaftar melengkapi riwayat pendidikan
          * Pendaftar melengkapi data wali
          * Pendaftar menentukan prodi
        
        Examples:
            | nama          | no_hp       | tgl_lahir  | jenis_kelamin | email          | tempat_lahir | nik              | pendidikan        | provinsi   | kab_kota            | jenis_sekolah | th_lulus | jurusan | nama_sekolah_1 | menyetujui |
            | raniah halai  | 08957281211 | 04-04-2005 | perempuan     | rania@mail.com | kab. ilir    | 3344225801009852 | SMA/SMK Sederajat | jawa timur | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1        | ya         |
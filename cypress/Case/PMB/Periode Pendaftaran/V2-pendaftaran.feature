Feature: User melakukan pendaftaran pada jalur yang dipilih

        Background:
            Given User menuju halaman "spmbfront/jalur-seleksi"
          * User masuk ke halaman jalur seleksi "V2"
          * User memilih jalur pendaftaran "V2"

        Scenario: User melakukan pendaftaran pendidikan terakhir sma/smk
             When Pendaftar memilih prodi "S1 - Akuntansi" di V2
          * Pendaftar mengisi data "nama pendaftar" dengan "<nama>" di v2
          * Pendaftar mengisi data "no hp" dengan "<no_hp>" di v2
          * Pendaftar mengisi data "tgl lahir" dengan "<tgl_lahir>" di v2
          * Pendaftar mengisi data "jenis kelamin" dengan "<jenis_kelamin>" di v2
          * Pendaftar mengisi data "email" dengan "<email>" di v2
          * Pendaftar mengisi data "tempat lahir" dengan "<tempat_lahir>" di v2
          * Pendaftar mengisi data "nik" dengan "<nik>" di v2
          * Pendaftar mengisi data "pendidikan terakhir" dengan "<pendidikan>" di v2
          * Pendaftar mengisi data "provinsi" dengan "<provinsi>" di v2
          * Pendaftar mengisi data "kab/kota" dengan "<kab_kota>" di v2
          * Pendaftar mengisi data "jenis sekolah" dengan "<jenis_sekolah>" di v2
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
          * Pendaftar berhasil masuk kehalaman pendaftar dari V2
        
        Examples:
                  | nama | no_hp       | tgl_lahir  | jenis_kelamin | email         | tempat_lahir | nik              | pendidikan        | provinsi   | kab_kota            | jenis_sekolah | th_lulus | jurusan | nama_sekolah_1 | menyetujui |
                  | rani | 08957281211 | 04-04-2005 | perempuan     | rani@mail.com | kab. ilir    | 3344225873109852 | SMA/SMK Sederajat | jawa timur | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1        | ya         |
                  | janu | 08971186711 | 04-04-2005 | laki laki     | janu@mail.com | kab. ilir    | 3340980985617722 | SMA/SMK Sederajat | jawa timur | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1        | ya         |

        Scenario: User melakukan pendaftaran pendidikan terakhir D3
             When Pendaftar memilih prodi "S1 - Teknik Informatika" di V2
          * Pendaftar mengisi data "nama pendaftar" dengan "<nama>" di v2
          * Pendaftar mengisi data "no hp" dengan "<no_hp>" di v2
          * Pendaftar mengisi data "tgl lahir" dengan "<tgl_lahir>" di v2
          * Pendaftar mengisi data "jenis kelamin" dengan "<jenis_kelamin>" di v2
          * Pendaftar mengisi data "email" dengan "<email>" di v2
          * Pendaftar mengisi data "tempat lahir" dengan "<tempat_lahir>" di v2
          * Pendaftar mengisi data "nik" dengan "<nik>" di v2
          * Pendaftar mengisi data "pendidikan terakhir" dengan "<pendidikan>" di v2
          * Pendaftar mengisi data "provinsi" dengan "<provinsi>" di v2
          * Pendaftar mengisi data "kab/kota" dengan "<kab_kota>" di v2
          * Pendaftar mengisi data "jenis sekolah" dengan "<jenis_pt>" di v2
          * Pendaftar mengisi data "th lulus" dengan "<th_lulus>" di v2
          * Pendaftar mengisi data "nama pt" dengan "<nama_univ>" di v2
          * Pendaftar mengisi data "prodi" dengan "<prodi>" di v2
          * Pendaftar klik "lanjutkan mendaftar" di v2
          * Pendaftar mengisi data "menyetujui" dengan "<menyetujui>" di v2
          * Pendaftar klik "lanjutkan mendaftar" di v2
          * Pendaftar berhasil daftar di V2
          * Pendaftar mendapatkan "ID Pendaftar"
          * Pendaftar mendapatkan "PIN"
          * Pendaftar klik "masuk sekarang" di v2
          * Pendaftar memasukkan id dan pin
          * Pendaftar klik "masuk" di v2
          * Pendaftar berhasil masuk kehalaman pendaftar dari V2

        Examples:
                  | nama | no_hp       | tgl_lahir  | jenis_kelamin | email         | tempat_lahir | nik              | pendidikan | provinsi   | kab_kota            | jenis_pt | th_lulus | prodi       | nama_univ         | menyetujui |
                  | Rafi | 08910281211 | 04-05-2005 | perempuan     | jeni@mail.com | kab. ilir    | 3344098666117722 | Diploma 3  | jawa timur | kabupaten mojokerto | pkbm     | 2020     | informatika | negeri banyuwangi | ya         |
                  | Jansen | 08989181211 | 04-01-2005 | laki laki     | kira@mail.com | kab. ilir    | 3340987354117722 | Diploma 3  | jawa timur | kabupaten mojokerto | pkbm     | 2020     | informatika | negeri banyuwangi | ya         |

Scenario: User melakukan pendaftaran pendidikan terakhir sma/smk
             When Pendaftar memilih prodi "S1 - Teknik Informatika" di V2
          * Pendaftar mengisi data "nama pendaftar" dengan "<nama>" di v2
          * Pendaftar mengisi data "no hp" dengan "<no_hp>" di v2
          * Pendaftar mengisi data "tgl lahir" dengan "<tgl_lahir>" di v2
          * Pendaftar mengisi data "jenis kelamin" dengan "<jenis_kelamin>" di v2
          * Pendaftar mengisi data "email" dengan "<email>" di v2
          * Pendaftar mengisi data "tempat lahir" dengan "<tempat_lahir>" di v2
          * Pendaftar mengisi data "nik" dengan "<nik>" di v2
          * Pendaftar mengisi data "pendidikan terakhir" dengan "<pendidikan>" di v2
          * Pendaftar mengisi data "provinsi" dengan "<provinsi>" di v2
          * Pendaftar mengisi data "kab/kota" dengan "<kab_kota>" di v2
          * Pendaftar mengisi data "jenis sekolah" dengan "<jenis_sekolah>" di v2
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
          * Pendaftar berhasil masuk kehalaman pendaftar dari V2
        
        Examples:
                  | nama | no_hp       | tgl_lahir  | jenis_kelamin | email         | tempat_lahir | nik              | pendidikan        | provinsi   | kab_kota            | jenis_sekolah | th_lulus | jurusan | nama_sekolah_1 | menyetujui |
                  | Adit | 08957281211 | 04-04-2005 | perempuan     | rani@mail.com | kab. ilir    | 3344212473764852 | SMA/SMK Sederajat | jawa timur | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1        | ya         |
                  | Regi | 08971186711 | 04-04-2005 | laki laki     | janu@mail.com | kab. ilir    | 3340980945732722 | SMA/SMK Sederajat | jawa timur | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1        | ya         |
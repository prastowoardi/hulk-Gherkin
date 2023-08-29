Feature: Admin Membuat Periode Pendaftaran

    Scenario: User melakukan pendaftaran
    When User menuju halaman "spmbfront/"
    * User masuk ke halaman jalur seleksi
    * User mengubah filter sesuai dengan jalur seleksi yang dicari
    * User memilih jalur pendaftaran
    * Pendaftar mengisi data "nama pendaftar" dengan "<nama>"
    * Pendaftar mengisi data "no hp" dengan "<no_hp>"
    * Pendaftar mengisi data "tgl lahir" dengan "<tgl_lahir>"
    * Pendaftar mengisi data "jenis kelamin" dengan "<jenis_kelamin>"
    * Pendaftar mengisi data "email" dengan "<email>"
    * Pendaftar mengisi data "tempat lahir" dengan "<tempat_lahir>"
    * Pendaftar mengisi data "nik" dengan "<nik>"
    * Pendaftar klik "lanjut"
    * Pendaftar mengisi data "provinsi" dengan "<provinsi>"
    * Pendaftar mengisi data "kab/kota" dengan "<kab_kota>"
    * Pendaftar mengisi data "jenis sekolah" dengan "<jenis_sekolah>"
    * Pendaftar mengisi data "th lulus" dengan "<th_lulus>"
    * Pendaftar mengisi data "jurusan" dengan "<jurusan>"
    * Pendaftar mengisi data "nama sekolah" dengan "<nama_sekolah>"
    * Pendaftar klik "lanjut"
    * Pendaftar mengisi data "pilihan 1" dengan "<pilihan_1>"
    * Pendaftar klik "daftar"
    * Pendaftar "centang" data valid
    * Pendaftar klik "konfirmasi pendaftaran"
    * Pendaftar klik "konfirmasi daftar"
    * Pendaftar berhasil daftar
    * Pendaftar mendapatkan "ID Pendaftar" yang dapat digunakan untuk login
    * Pendaftar mendapatkan "PIN" yang dapat digunakan untuk login
    * Pendaftar klik "masuk"
    * Pendaftar input credentials
    * Pendaftar klik "login"
    * Pendaftar berhasil masuk kehalaman pendaftar

Examples:
    | nama      | no_hp          | tgl_lahir   | jenis_kelamin | email          | tempat_lahir | nik              | provinsi      | kab_kota            | jenis_sekolah | th_lulus | jurusan | nama_sekolah | pilihan_1     |
    | deka daku | 08971287121111 | 04-04-2005  | laki laki     | deka@mail.com  | kab. ilir    | 3344225566117722 | jawa timur    | kabupaten mojokerto | sman          | 2020     | IPA     | sma n 1      | s1 - hukum    |
    | luna maya | 081234567890   | 15-09-1998  | perempuan     | luna@mail.com  | jakarta      | 7812918374281273 | jawa timur    | kabupaten mojokerto | sman          | 2016     | IPA     | sma n 1      | s1 - akuntansi|

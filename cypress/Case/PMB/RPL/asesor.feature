Feature: User Login

   Background: 
        Given "Asesor Akuntansi" masuk ke siakad
        * "Asesor" masuk ke modul "PMB"

    Scenario: Asesor mengakses halaman asesor
        When "Asesor" menuju ke halaman "spmb/seleksi_rpl"
        * User melihat statistik pendaftar
        * Asesor berada pada halaman seleksi RPL
        * Asesor melakukan penilaian RPL pendaftar "ALI AKBAR"
        * Asesor kembali ke halaman list dan melihat status pendaftar "ALI AKBAR"
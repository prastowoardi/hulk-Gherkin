Feature: User Login Sebagai Asesor

   Background: 
        Given "Asesor TI" masuk ke siakad
        * "Asesor" masuk ke modul "PMB"

    Scenario: Asesor memberi asesmen pada matakuliah yang dipilih pendaftar
        When "Asesor" menuju ke halaman "spmb/seleksi_rpl"
        * User melihat statistik pendaftar
        * Asesor berada pada halaman seleksi RPL
        * Asesor melakukan penilaian RPL pendaftar "DENI"
        * Asesor "menyimpan" nilai pendaftar
        * Asesor kembali ke halaman list dan melihat status pendaftar "DENI"

    Scenario: Aseser menambahkan matakuliah yang tidak dipilih pendaftar
        When "Asesor" menuju ke halaman "spmb/seleksi_rpl"
        * Asesor menambahkan "2" matakuliah yang tidak dipilih pendaftar "DENI"
        * Asesor "menyimpan" nilai pendaftar
        * Asesor kembali ke halaman list dan melihat status pendaftar "DENI"
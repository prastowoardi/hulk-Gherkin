Feature: Setting sister di administrasi aplikasi

    Background: 
        Given "Admin" masuk ke siakad
        * "SuperAdmin" masuk ke modul "Aplikasi"
    
    Scenario: Mengubah akun sister ke stikes bwi
        When "Admin" menuju ke halaman "admin/ms_setting"
        * Admin ubah filter "Kelompok" dengan "Plugin / Addon"
        * Admin mengaktifkan servis sister
        * Admin mengisi url sister
        * Admin mengisi username sister
        * Admin mengisi password sister
        * Admin mengisi pengguna sister
        Then Admin cek service sister
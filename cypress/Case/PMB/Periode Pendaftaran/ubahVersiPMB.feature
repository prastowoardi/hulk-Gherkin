Feature: Admin mengubah tampilan PMB menjadi V1 / V2

        Background:
            Given "Admin" masuk ke siakad
            * "SuperAdmin" masuk ke modul "PMB"
            * "Admin" menuju ke halaman "spmb/ms_settingapk"

        Scenario: Admin mengubah tampilan PMB ke V1
             When Admin ubah tampilam PMB menjadi "V1"

        Scenario: Admin mengubah tampilan PMB ke V2
             When Admin ubah tampilam PMB menjadi "V2"
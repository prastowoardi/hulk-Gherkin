Feature: User Login

    Background: 
        Given User login siakad

    Scenario: User login
        When User memasukkan username dan password
        # * "Admin" masuk ke modul "SDM"
        # * "Dosen" masuk ke modul "SDM"
        Then User masuk ke dalam sistem
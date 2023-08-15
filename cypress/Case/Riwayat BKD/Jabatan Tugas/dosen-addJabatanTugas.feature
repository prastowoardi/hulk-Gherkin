Feature: Dosen menambah riwayat jabatan tugas

Background:
        Given "Dosen" masuk ke siakad
        * "Dosen" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * Dosen mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * Dosen mengisi field "Modal SK" dengan "DED/2023/12/1111"
        * Dosen mengisi field "TMT Mulai" dengan "30-07-2023"
        * Dosen mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat alert "Berhasil"
        * "Dosen" melihat data "jabatan tugas" ada di list

    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * Dosen mengisi field "Modal SK" dengan "DED/2023/12/1111"
        * Dosen mengisi field "TMT Mulai" dengan "30-07-2023"
        * Dosen mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field jabatan tugas
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * Dosen mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * Dosen mengisi field "Modal SK" dengan "DED/2023/12/1111"
        * Dosen mengisi field "TMT Mulai" dengan "30-07-2023"
        * Dosen mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field sk
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Dosen" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Dosen" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Dosen" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field tmt mulai
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Dosen" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Dosen" mengisi field "Modal SK" dengan "DED/2023/12/1111"
        * "Dosen" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field lokasi kegiatan
        When "Dosen" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Dosen" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Dosen" mengisi field "Modal SK" dengan "DED/2023/12/1111"
        * "Dosen" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Dosen" klik tombol "Simpan"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
Feature: Admin menambah riwayat jabatan tugas

Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Admin" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Admin" mengisi field "Modal SK" dengan "Surat Keputusan"
        * "Admin" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Admin" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"

    Scenario: Negatif - Menambahkan data dengan mengosongkan field kategori kegiatan
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Admin" mengisi field "Modal SK" dengan "Surat Keputusan"
        * "Admin" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Admin" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field jabatan tugas
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Admin" mengisi field "Modal SK" dengan "Surat Keputusan"
        * "Admin" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Admin" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field sk
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Admin" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Admin" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Admin" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field tmt mulai
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Admin" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Admin" mengisi field "Modal SK" dengan "Surat Keputusan"
        * "Admin" mengisi field "Lokasi Penugasan" dengan "Jambi"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
    
    Scenario: Negatif - Menambahkan data dengan mengosongkan field lokasi kegiatan
        When "Admin" menuju ke halaman "hr/list_rjabatanstruktural/1"
        * "Admin" klik tombol "Tambah"
        * "Admin" mengisi field "Kategori Kegiatan Atas" dengan "Menduduki jabatan pimpinan pada lembaga pemerintahan/pejabat negara yang harus dibebaskan dari jabatan organiknya atau bekerja pada industri/organisasi yang diakui Kemendikbud"
        * "Admin" mengisi field "Jabatan Tugas" dengan "Duta Besar"
        * "Admin" mengisi field "Modal SK" dengan "Surat Keputusan"
        * "Admin" mengisi field "TMT Mulai" dengan "30-07-2023"
        * "Admin" mengisi field "Status Pengajuan" dengan "Disetujui"
        * "Admin" klik tombol "Simpan"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
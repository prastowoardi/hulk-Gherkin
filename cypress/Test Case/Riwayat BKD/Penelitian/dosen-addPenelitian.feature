Feature: Dosen menambah riwayat jabatan tugas

Background:
        Given "Dosen" masuk ke siakad
        * "Dosen" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Kurang"
        * "Dosen" mengisi field "Dana Pemerintah" dengan "8900000"
        * "Dosen" mengisi field "Dana DN" dengan "440000"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat alert "Berhasil"
        * "Dosen" melihat data "penelitian" ada di list

    Scenario: Negatif - Menambahkan data dengan mengosongkan perguruan tinggi afiliasi
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan kelompok bidang
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan jenis skim
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan judul penelitian
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun usulan
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun kegiatan
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun pelaksanaan ke
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tanggal mulai
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan roadmap
        When "Dosen" menuju ke halaman "hr/list_rpenelitian/1"
        * "Dosen" klik tombol "Tambah"        
        * "Dosen" mengisi field "Afiliasi" dengan "005009"
        * "Dosen" mengisi field "Kelompok Bidang" dengan "mesin"
        * "Dosen" mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * "Dosen" mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * "Dosen" mengisi field "Tahun Usulan" dengan "2018"
        * "Dosen" mengisi field "Tahun Kegiatan" dengan "2019"
        * "Dosen" mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * "Dosen" mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * "Dosen" mengisi field "Roadmap" dengan "Sesuai"
        * "Dosen" mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * "Dosen" mengisi field "Peran" dengan "Ketua"
        * "Dosen" klik tombol "Simpan"
        * "Dosen" klik tombol "Ya, Yakin"
        Then "Dosen" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
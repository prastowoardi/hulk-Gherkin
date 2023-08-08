Feature: Admin menambah riwayat penelitian

Background:
        Given "Admin" masuk ke siakad
        * "Admin" masuk ke modul "SDM" 
    
    Scenario: Positif - Menambahkan data dengan benar
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Dana PT" dengan "8900000"
        * Admin mengisi field "Dana LN" dengan "440000"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        * "Admin" melihat data "penelitian" ada di list

    Scenario: Positif - Menambahkan data dengan anggota lebih dari 1
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Ipteks"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Alam"
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "12-04-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Tambah Anggota"
        * Admin mengisi field "Nama Pegawai 2" dengan "suhadi"
        * Admin mengisi field "Kategori Kegiatan Pegawai 2" dengan "Sebagai anggota"
        * Admin mengisi field "Peran Pegawai 2" dengan "Anggota"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat alert "Berhasil"
        Then "Admin" melihat jumlah anggota adalah "2"

    Scenario: Negatif - Menambahkan data dengan mengosongkan perguruan tinggi afiliasi
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan kelompok bidang
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan jenis skim
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan judul penelitian
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun usulan
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun kegiatan
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tahun pelaksanaan ke
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan tanggal mulai
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"

    Scenario: Negatif - Menambahkan data dengan mengosongkan roadmap
        When "Admin" menuju ke halaman "hr/list_rpenelitian/1"
        * "Admin" klik tombol "Tambah"        
        * Admin mengisi field "Afiliasi" dengan "005009"
        * Admin mengisi field "Kelompok Bidang" dengan "mesin"
        * Admin mengisi field "Jenis SKIM" dengan "Penelitian Fundamental"
        * Admin mengisi field "Judul Penelitian" dengan "Metode pengajaran sekolah Montessori."
        * Admin mengisi field "Tahun Usulan" dengan "2018"
        * Admin mengisi field "Tahun Kegiatan" dengan "2019"
        * Admin mengisi field "Tahun Pelaksanaan Ke" dengan "3"
        * Admin mengisi field "Tanggal Mulai" dengan "30-06-2023"
        * Admin mengisi field "Roadmap" dengan "Sesuai"
        * Admin mengisi field "Status Pengajuan" dengan "Disetujui"
        * Admin mengisi field "Kategori Kegiatan" dengan "Sebagai anggota"
        * Admin mengisi field "Peran" dengan "Ketua"
        * "Admin" klik tombol "Simpan"
        * "Admin" klik tombol "Ya, Yakin"
        Then "Admin" melihat modal dengan pesan "Mohon mengisi isian yang bergaris merah"
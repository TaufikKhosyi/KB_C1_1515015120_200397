DOMAINS
alamat_asal = alamat(symbol,symbol,symbol)
nama_mahasiswa,jenis_kelamin,nim = symbol
nama_matkul,nama_dosen,program_studi,ruang = symbol

PREDICATES
nondeterm mahasiswa(nama_matkul,nama_mahasiswa,jenis_kelamin,nim,alamat_asal)
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
nondeterm cetak_mahasiswa(nama_mahasiswa,nama_dosen,ruang,alamat_asal)
nondeterm matakuliah(nama_matkul,nama_dosen,program_studi,ruang)
nondeterm matakuliah_yang_diajarkan_pada_semester_tersebut(nama_matkul,nama_mahasiswa,ruang,nama_dosen)

CLAUSES
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:-
write("\t*************  MAHASIAWA YANG MENGIKUTI MATAKULIAH INTELEGENSI BUATAN  *************"),nl,
write("*****************************************************************************************************************************"),nl,
write("\n"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl,
write("NIM\t\t Nama Mahasiswa\t\t Nama Dosen\tRuang\t\t Alamat\n"),
mahasiswa("Intelegensi Buatan",_,_,_,_),
matakuliah(_,_,_,"1"),
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl,
cetak_mahasiswa(nama_mahasiswa,nama_dosen,ruang,alamat(symbol,symbol,symbol)).

mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:-
write("\n\n Tekan sembarang tombol..."),nl, readchar(_).	

cetak_mahasiswa(nama_mahasiswa,nama_dosen,ruang,alamat(symbol,symbol,symbol)):-
write("2002001","\t\t ","Sugeng Riyadi","\t\t ","Abdul Kadir","\t ","1","\t ","Jl. Sudirman No. 2","Pontianak","Kalimantan Barat"),nl,

write("2002002","\t\t ","Yulia Sugondo","\t\t "," Abdul Kadir","\t ","1","\t ","Jl. A. Yani No. 10","Klaten","Jawa Tengah"),nl,

write("2002003","\t\t ","Budiman Sejati","\t\t "," Abdul Kadir","\t ","1","\t ","Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah"),nl.

matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Sugeng Riyadi","1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Yulia Sugondo","1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Budiman Sejati","1","Abdul Kadir").

matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Laksamana Sukardi","2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Rini Suwandi","2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Kwik Kian Gie","2","Indra Yatini").

matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Riri Reza","3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Rachel Maryam","3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Garin Nugroho","3","Sigit Anggoro").
	
mahasiswa("Intelegensi Buatan","Sugeng Riyadi",lakilaki,"2002001",alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")).
mahasiswa("Intelegensi Buatan","Yulia Sugondo",perempuan,"2002002",alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).
mahasiswa("Intelegensi Buatan","Budiman Sejati",lakilaki,"2002003",alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

mahasiswa("PDE","Laksamana Sukardi",lakilaki,"2002004",alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")).
mahasiswa("PDE","Rini Suwandi",perempuan,"2002005",alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")).
mahasiswa("PDE","Kwik Kian Gie",lakilaki,"2002006",alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).
mahasiswa("Teknik Antar Muka","Riri Reza",lakilaki,"2002007",alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah")).
mahasiswa("Teknik Antar Muka","Rachel Maryam",perempuan,"2002008",alamat("Jl. Otista No. 112","Bandung","Jawa Barat")).
mahasiswa("Teknik Antar Muka","Garin Nugroho",lakilaki,"2002009",alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua")).

matakuliah("Intelegensi Buatan","Abdul Kadir","Manajemen Informatika","1").
matakuliah("PDE","Indra Yatini","Teknik Informatika","2").
matakuliah("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer","3").

GOAL
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan.

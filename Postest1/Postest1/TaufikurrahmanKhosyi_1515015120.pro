predicates
  mahasiswa(symbol,integer) - nondeterm (o,i)
  universitas(symbol,integer) - nondeterm (o,i)
  masuk(symbol,symbol,integer) - nondeterm (o,o,i)

clauses
	mahasiswa(khosyi,85). %nama mahasiswa dan nilai rata ratanya
	mahasiswa(rijal,82).
	mahasiswa(sarman,85).
	mahasiswa(arif,77).
	mahasiswa(iqbal,75).
	
	universitas(mulawarman,85). %nama universitas dengan standar nilai rata ratanya
	universitas(itk,82).
	universitas(gadjah_mada,77).
	universitas(brawijaya,75).
	
	masuk(Nama,Nama_univ,Nilai_rata2):- %jika "nama mhs" masuk "nama_univ", sesuai nilai rata2
	mahasiswa(Nama,Nilai_rata2),  % "nama mhs" dengan nilai rata ratanya
	universitas(Nama_univ,Nilai_rata2). %"nama Univ dengan standar nilai rata ratanya

goal
  	masuk(Nama,Nama_univ,85). %goalnya "nama mhs" masuk "Nama Univ" Lalu yang sesuai dengan nilai rata rata 85
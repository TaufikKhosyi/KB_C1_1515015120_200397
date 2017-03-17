domains
	nama,matkul,nilai=symbol %nilai type data pada argumen, nama,matkul,nilai memiliki type data symbol

predicates
	nondeterm mahasiswa(nama,matkul) %predikat predikat beserta argumen
	nondeterm mahasiswa(nama)
	nondeterm nilaimk(nama,nilai)
	nondeterm lulus(nama,nilai)
	nondeterm tdklulus(nama,nilai)
	nondeterm matakuliah(matkul)
	
clauses
	mahasiswa(irfan). %nama mahasiswa
	mahasiswa(komeng).
	mahasiswa(dati).
	mahasiswa(fatima).
	mahasiswa(maspion).
	
	mahasiswa(ricky).
	mahasiswa(embang).
	mahasiswa(salmin).
	mahasiswa(vina).
	mahasiswa(sondang).
	
	mahasiswa(pamuji).
	mahasiswa(luki).
	mahasiswa(sadek).
	mahasiswa(yusida).
	mahasiswa(eka).
	
	mahasiswa(irfan,intelijensi_buatan). %nama mahasiswa beserta matakuliah yang diambilnya
	mahasiswa(komeng,intelijensi_buatan).
	mahasiswa(dati,intelijensi_buatan).
	mahasiswa(fatima,intelijensi_buatan).
	mahasiswa(maspion,intelijensi_buatan).
	
	mahasiswa(ricky,pde).
	mahasiswa(embang,pde).
	mahasiswa(salmin,pde).
	mahasiswa(vina,pde).
	mahasiswa(sondang,pde).
	
	mahasiswa(pamuji,sistem_operasi).
	mahasiswa(luki,sistem_operasi).
	mahasiswa(sadek,sistem_operasi).
	mahasiswa(yusida,sistem_operasi).
	mahasiswa(eka,sistem_operasi).
	
	nilaimk(irfan,"A"). %Nama Mahasiswa Beserta Nilainya
	nilaimk(komeng,"D").
	nilaimk(dati,"C").
	nilaimk(fatima,"B").
	nilaimk(maspion,"C").
	
	nilaimk(ricky,"E").
	nilaimk(embang,"A").
	nilaimk(salmin,"D").
	nilaimk(vina,"B").
	nilaimk(sondang,"C").
	
	nilaimk(pamuji,"B").
	nilaimk(luki,"E").
	nilaimk(sadek,"B").
	nilaimk(yusida,"A").
	nilaimk(eka,"A").
	
	matakuliah(intelijensi_buatan). %nama matakuliah yang diajarkan
	matakuliah(pde).
	matakuliah(sistem_operasi).
	
	lulus(X,Y):-
		nilaimk(X,Y),Y<>"D",Y<>"E". %mahasiswa lulus jika nilai matakuliah tidak samadengan D dan tidak sama dengan E
		
	tdklulus(X,Y):-
		nilaimk(X,Y),Y<>"A",Y<>"B",Y<>"C". %mahasiswa tidak lulus jika matakuliah tdk samadengan A,B, dan C
		
	
goal
	mahasiswa(Nama,intelijensi_buatan);
	lulus(Lulus_Dengan_Nama,Nilai);
	tdklulus(Tdk_Lulus_Dengan_Nama,Nilai);
	matakuliah(Matakuliah);
	mahasiswa(Mahasiswa).
	
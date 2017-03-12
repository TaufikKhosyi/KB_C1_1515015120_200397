domains
	nama_makanan,orang,makan=symbol
	harga,sum,dikali=integer
	
	
predicates
	nondeterm kata
	nondeterm makanan (nama_makanan, harga)
	nondeterm jumlah (sum,sum,sum)
	nondeterm kali (dikali,dikali,dikali)
	nondeterm beli(orang,makan)
	nondeterm beli(orang)
	nondeterm huruf(char)
	
	
clauses
	kata:-
		write("============ SELAMAT DATANG DI KHOSYI RESTAURANT ============"),nl,
		write("Pencet Sembarang untuk menampilkan Menu Makanan dan Lain Lain"),nl,
		readchar(_).		
	
	makanan("Spageti",50000).
	makanan("Pizza",120000).
	makanan("Jumbo Pizza",200000).
	makanan("Fried Rice",30000).
	makanan("Hotdog",20000).
	makanan("Fried Chicken",20000).
	makanan("Fried Potato",15000).
	
	jumlah(X,Y,Sum):-
		Sum=X+Y.
		
	kali(X,Y,Dikali):-
		Dikali=X*Y.
		
	beli(A):-	
		beli(A,jumbo_pizza).
	
	beli(adul,fried_chicken).
	beli(sapri,jumbo_pizza).
	beli(sule,spageti).
	beli(omas,jumbo_pizza).
	
	huruf(H):-
		'a' <= H,
		H <= 'c'.
goal
	kata(),
	makanan(Nama_Makanan,Harga);
	jumlah(30000,60000,Sum),kali(200000,5,Dikali);
	makanan(Nama_Makanan,Harga),Harga<50000;
	beli(Membeli_Jumbo_Pizza);
	huruf('b').
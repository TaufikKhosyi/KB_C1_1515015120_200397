/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) %deklarasi predikat diikuti dua argumen yang memiliki tipe data masing-masing unsigned dan real
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %deklarasi kembali faktorial predikat yang memiliki tipe data unsigned dan real, kali ini diikuti oleh 4 argumen

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- %merupakan klausa yang pertama kali dicocokkan dengan GOAL. pada klausa faktorial ini terdapat dua argumen dimana argumen N dengan nilai 3, dan FactN masih belum diketahui nilainya.
	factorial(N,FactN,1,1.0). %subgoal dari factorial(N,FactN), memilik 4 argumen yaitu (N,FactN,1,1.0). diketahui bahwa nilai N adalah 3 maka factorial(3,?,1,1.0)

  factorial(N,FactN,N,FactN):-!. %faktorial ini memiliki 4 argumen yaitu (N,FactN,N,FactN) lalu diikuti jika maka dan tanda seru atau cut(!). jika nilai argumen pertama (N) sama dengan nilai argumen ketiga (N)
				 %dan jika nilai argumen kedua (FactN) sama dengan nilai argumen keempat(FactN) maka Visual prolog akan menghentikan lacakbalik.			     
  factorial(N,FactN,I,P):- %selanjutnya, faktorial ini memiliki 4 argumen yaitu (N,FactN,I,P), Karna N=3, FactN belum diketahui nilainya, I=1, dan P=1.0 sehingga hasilnya factorial(3,?,1,1.0).
	NewI = I+1, %Nilai dari NewI adalah I+1
	NewP = P*NewI, %Nilai dari NewP adalah P * NewI
	factorial(N, FactN, NewI, NewP). %Lanjut ke faktorial ini, faktorial ini memiliki 4 argumen yang nilainya dari operasi subgoal diatasnya yaitu (N,FactN,NewI,NewP

goal
  factorial(3,X). %pada goal, factorial ditentukan nilai 3 pada argumen pertama dan pada argumen keduanya berisi variabel X. nilai X ini yang dicari
		  %Pertama-tama Visual Prolog mencari fakta dari rule yang cocok dengan goal, lalu ditemukan factorial(N,FactN), selanjutnya mencari pada klausa tersebut untuk mengunifikasi argumennya
		  %Karna X variabel ini bebas, jadi X dapat diunifikasikan ke variabel manapun, FactN juga merupakan variabel bebas dari rule faktorial, maka dilakukan unifikasi antara X dan factorial, sehingga X=FactN
		  %dan variabel N diikat dengan nilai 3
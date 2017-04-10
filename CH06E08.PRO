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
  factorial(unsigned,real) - procedure (i,o)
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):-
  %syntax di atas sesai dengan goal yang akan di cari maka X di unifikasi pada variabel fact N dan N = 3
	factorial(N,FactN,1,1.0).
  %jika N=3, fact N = belum di ketahui i = 1	

  factorial(N,FactN,N,FactN):-!.
  %jika N = nilai N pada argumen ke 3 dan fact N = nilai pada fact N poin ke 4 maka program akan di paksa berhenti 
  factorial(N,FactN,I,P):-
  %jika N=3, fact N = belum di ketahui i = 1
	NewI = I+1,
	%2 = 1+1
	NewP = P*NewI,
	%2 = 1*2
	factorial(N, FactN, NewI, NewP).
        %factorial (3, FactN, 2, 2)
        %karena belum sesuai dengan aturan factorial(N,FactN,N,FactN):-!. maka akan di lakukan perhitungan lagi
        %NewI = I+1
        %3=2+1
        %NewP = P*NewI
        %6=2*3
        %karena nilai N = 3 I=3 P=6
        %factorial(N,FactN,N,FactN):-! karena pada aturan tersebut nilai N = Nilai N pada argumen ke 3  dan N = 3, I = 3 maka otomatis nilai factN = P dan P = 6, fact N = 6
        %lalu program berhenti 
        
goal
  factorial(3,X).
  % goalnya yaitu menciari nilai X maka prolog akan mencari jawaban pada bagian clausa

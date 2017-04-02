DOMAINS
nama = symbol
Adil = real
Santun = real

PREDICATES
nondeterm seseorang_yang_bijaksana(nama)
nondeterm orang(nama,Adil)
nondeterm orang(nama,Santun)
nondeterm pembohong(nama)
nondeterm munafik(nama)

CLAUSES
seseorang_yang_bijaksana(Nama):-orang(Nama,Adil),
				orang(Nama,Santun),
				Santun =1,
				Adil =2,
				not(munafik( Nama )),!,
				not(pembohong( Nama )).

orang("AZIZ", 1).
orang("FAHRUL", 1).
orang("RENDRA",1).
orang("JAINUDIN", 1).

orang("AZIZ", 2).
orang("FAHRUL", 2).
orang("RENDRA", 2).
orang("JAINUDIN", 2).

pembohong("AZIZ").
pembohong("FAHRUL").
pembohong("RENDRA").

munafik("AZIZ").
munafik("FAHRUL").
munafik("RENDRA").

GOAL
seseorang_yang_bijaksana(X).

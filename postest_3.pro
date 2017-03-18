DOMAINS
mahasiswa,nilai,nama = symbol

PREDICATES
nondeterm matakuliah(nama)
nondeterm ai(mahasiswa,nilai)
nondeterm pde(mahasiswa,nilai)
nondeterm so(mahasiswa,nilai)
nondeterm tidaklulus(mahasiswa)
nondeterm lulus(mahasiswa)
nondeterm garis(string)
CLAUSES
ai("Irfan","A").
ai("Komeng","D").
ai("Dati","C").
ai("Fatima","B").
ai("Maspion","C").

pde("Ricky","E").
pde("Embang","A").
pde("Salmin","D").
pde("Vina","B").
pde("Sondang","C").

so("Pamuji","D").
so("Luki","E").
so("Sadek","B").
so("Yusida","A").
so("Eka","A").

matakuliah(sistem_operasi).
matakuliah(pde).
matakuliah(intelejensi_buatan).

tidaklulus(Mahasiswa):- ai(Mahasiswa,"E");
			ai(Mahasiswa,"D");
			pde(Mahasiswa,"E");
			pde(Mahasiswa,"D");
			so(Mahasiswa,"D");
			so(Mahasiswa,"E").
			
lulus(Mahasiswa):- ai(Mahasiswa,"A");
		   ai(Mahasiswa,"B");
		   ai(Mahasiswa,"C");
		   pde(Mahasiswa,"A");
		   pde(Mahasiswa,"B");
		   pde(Mahasiswa,"C");
		   so(Mahasiswa,"A");
		   so(Mahasiswa,"B");
		   so(Mahasiswa,"B").
garis("==============================I").
		   
GOAL
ai(Mahasiswa_Intelejensi,_);
garis(I);
tidaklulus(Mahasiswa_Tidak_Lulus);
garis(I);
lulus(Mahasiswa_lulus);
garis(I);
matakuliah(Nama_matkul);
garis(I);
ai(Nama,_);
pde(Nama,_);
so(Nama,_).







%Erwin Clothes
predicates
  baju(symbol,long,symbol,long) - nondeterm (o,o,o,i)
 celana(symbol,long,symbol,long)- nondeterm (o,o,o,i)
pakaian (symbol,long,symbol,long) - nondeterm (o,o,o,i)

clauses
  baju(polo,28,biru,500000).
  baju(kaos,29,hitam,250000).
  baju(kemeja,38,pink,800000).

  celana(jeans,29,hijau,850000).
  celana(levis,32,ungu,950000).
  celana(jogger,41,merah,250000).

  pakaian(Jenis,Ukuran,Warna,Harga):-
	baju(Jenis,Ukuran,Warna,Harga);
	celana(Jenis,Ukuran,Warna,Harga).

goal
  pakaian(Jenis,Ukuran,Warna,250000).

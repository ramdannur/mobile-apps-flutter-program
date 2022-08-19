void main() {
  int harga = 200;
  
  var diskon;
  
  // diskon 20%
  diskon = 20; // berubah jadi integer
  
  final hargaDiskon = diskon/100*harga;
  
  print('potongan harga = $hargaDiskon');
  print('harga setelah di diskon = ${harga-hargaDiskon}');
}

import 'package:burcrehberi/burc_item.dart';
import 'package:burcrehberi/data/strings.dart';
import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar =[];

  BurcListesi({super.key}){
    tumBurclar = veriKaynaginiHazirla();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Burçlar Listesi",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),backgroundColor: Colors.teal),
      body:  Center(
        child: ListView.builder(itemBuilder: (context, index){
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [] ;
    for(int i=0; i < 12; i++){
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim = "${Strings.BURC_ADLARI[i].toLowerCase()}${i+1}.png";
      var burcBuyukResim = "${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i+1}.png";
      Burc eklenecekBurc = Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}

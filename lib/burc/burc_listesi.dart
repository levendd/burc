
import 'package:burc_application/burc/burc_item.dart';
import 'package:burc_application/burc/burc_listesi.dart';
import 'package:burc_application/burc/burc.dart';
import 'package:burc_application/burc/strings.dart';
import 'package:flutter/material.dart';

class burcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  burcListesi(){
    tumBurclar=veriKaynaginiHazirla();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return BurcItem(listelenenBurc: tumBurclar[index],);
        },
        itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi    = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var BurcKucukResim =
        Strings.BURC_ADLARI[i].toLowerCase() +"${i+1}.png";
      var BurcBuyukResim =
        Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk"+"${i+1}.png";
      Burc eklenecekBurc = Burc(burcAdi, burcTarihi, burcDetayi, BurcKucukResim, BurcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
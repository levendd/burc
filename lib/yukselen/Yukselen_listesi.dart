

import 'package:burc_application/yukselen/yukselen.dart';
import 'package:burc_application/yukselen/Yukselen_item.dart';

import 'package:flutter/material.dart';
import 'package:burc_application/yukselen/yukselen_string.dart';


class YukselenListesi extends StatelessWidget {
  late List<Yukselen> tumYukselenler;
  YukselenListesi(){
    tumYukselenler=veriKaynaginHazirla();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yükselen Listesi"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return YukselenItem(listelenenYukselen: tumYukselenler[index],);
        },
        itemCount: tumYukselenler.length,),
      ),
    );
  }

  List<Yukselen> veriKaynaginHazirla() {
    List<Yukselen> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi    = Strings.BURC_YUKSELEN_ADLARI[i];
      var burcDetayi = Strings.BURC__YUKSELEN_GENEL_OZELLIKLERI[i];
      var BurcKucukResim =
        Strings.BURC_YUKSELEN_ADLARI[i].toLowerCase() +"${i+1}.png";
      var BurcBuyukResim =
        Strings.BURC_YUKSELEN_ADLARI[i].toLowerCase()+"_buyuk"+"${i+1}.png";
      Yukselen eklenecekyukselen = Yukselen(burcAdi, burcDetayi, BurcKucukResim, BurcBuyukResim);
      gecici.add(eklenecekyukselen);
    }
    return gecici;
  }
}
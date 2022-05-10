import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/main.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'data/strings.dart';

class BurcListesi extends StatelessWidget {
  final burcSayisi = 12;

  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < burcSayisi; i++) {
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i].toLowerCase() + (i + 1).toString() + ".png",
          Strings.BURC_ADLARI[i].toLowerCase() +
              '_buyuk' +
              (i + 1).toString() +
              ".png");
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}

import 'package:flutter/material.dart';
import 'package:pizza/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYukseligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    var d = AppLocalizations.of(context);



    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: ekranGenisligi/19),),
        backgroundColor: anaRenk,
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYukseligi/43),
            child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("images/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(fontSize: 22, color: yaziRenk2),textAlign: TextAlign.center),
              ],
            ),
          ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
              children: [
                Text(d.fiyat, style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
                SizedBox(width: ekranGenisligi/2, height: ekranYukseligi/14,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                          backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    child: Text(d.buttonYazi, style: TextStyle(color: yaziRenk1, fontSize: 18),),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(icerik, style: TextStyle(color: yaziRenk1)),
    );
  }
}


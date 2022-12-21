import 'package:flutter/material.dart';

import 'gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String adSoyad;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;

  const ProfilSayfasi({super.key, required this.adSoyad, required this.kullaniciAdi, required this.kapakResimLinki, required this.profilResimLinki});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
                //color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                        kapakResimLinki),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(

                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: kullaniciAdi,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                      image: DecorationImage(
                        image: NetworkImage(
                            profilResimLinki),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      adSoyad,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: Colors.grey[200],
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        size: 19.0,
                      ),
                      SizedBox(
                        width: 2.1,
                      ),
                      Text("Takip et",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                sayac("Takipçi", "1M"),
                sayac("Takip Edilen", "0"),
                sayac("Gönderi Sayısı", "80")
              ],
            ),
          ),
          GonderiKarti(
            adSoyad: "Ahmet Tutum",
            gecenSure: "15 dakika önce",
            aciklama: "Florida müthiş bir yer!",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
            gonderiResimLinki:
                "https://media.istockphoto.com/id/802893644/tr/foto%C4%9Fraf/downtown-miami-florida-havadan-g%C3%B6r%C3%BCn%C3%BCm%C3%BC.jpg?s=1024x1024&w=is&k=20&c=zhcj9srY1eE5yYVmiK1ATEmlSEQmQkyuNCq37lT15YI=",
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sayi,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_tasarim/gonderiKarti.dart';
import 'package:instagram_tasarim/profilSayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[400],
            size: 32.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Instagram Tasarim",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.pink[300],
              size: 32.0,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur("Ali",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
                profilKartiOlustur("Ahmet",
                    "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg"),
                profilKartiOlustur("Mehmet",
                    "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_960_720.jpg"),
                profilKartiOlustur("Linda",
                    "https://cdn.pixabay.com/photo/2016/11/29/06/08/woman-1867715_960_720.jpg"),
                profilKartiOlustur("Georgina",
                    "https://cdn.pixabay.com/photo/2020/06/26/03/54/young-5341577_960_720.jpg"),
                profilKartiOlustur("Becky",
                    "https://cdn.pixabay.com/photo/2020/05/11/11/23/woman-5157666_960_720.jpg"),
                profilKartiOlustur("Yusuf",
                    "https://instagram.fadb5-1.fna.fbcdn.net/v/t51.2885-15/280156097_145407964673069_1595558480382984499_n.webp?stp=dst-jpg_e35_s320x320&_nc_ht=instagram.fadb5-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=Oabnr5qYkVUAX8UCVeP&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDrDhIh2mgm0xGNKdyvu3o5B5q7CVWzNkoAe9PbMCVVng&oe=63A67BD4&_nc_sid=8fd12b"),
                profilKartiOlustur("Samet",
                    "https://instagram.fadb5-1.fna.fbcdn.net/v/t51.2885-15/292936804_783509806117481_3499548620888248506_n.jpg?stp=c0.180.1440.1440a_dst-jpg_e35_s320x320&_nc_ht=instagram.fadb5-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=B-VHbUk2UxoAX-98u30&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD5eumxUBVoMvNMIyaxuL70Vp0bhd1hS2Oi2Ym-xdVhpA&oe=63A62A07&_nc_sid=8fd12b"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            adSoyad: "Yusuf Öz",
            gecenSure: "15 dakika önce",
            aciklama: "Favelaya gittim",
            profilResimLinki:
                "https://instagram.fadb5-1.fna.fbcdn.net/v/t51.2885-15/280156097_145407964673069_1595558480382984499_n.webp?stp=dst-jpg_e35_s320x320&_nc_ht=instagram.fadb5-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=Oabnr5qYkVUAX8UCVeP&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDrDhIh2mgm0xGNKdyvu3o5B5q7CVWzNkoAe9PbMCVVng&oe=63A67BD4&_nc_sid=8fd12b",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2018/07/20/01/42/rio-de-janeiro-3549794_1280.jpg",
          ),
          GonderiKarti(
            adSoyad: "Ahmet Tutum",
            gecenSure: "6 saat önce",
            aciklama: "Tokyo sokakları",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
            gonderiResimLinki:
                "http://www.bilimevi.com/images/dosyalar/tokyo7.jpg",
          ),
          GonderiKarti(
            adSoyad: "Samet Aydin",
            gecenSure: "4 saat önce",
            aciklama: "Lübnandayım",
            profilResimLinki:
                "https://instagram.fadb5-1.fna.fbcdn.net/v/t51.2885-15/292936804_783509806117481_3499548620888248506_n.jpg?stp=c0.180.1440.1440a_dst-jpg_e35_s320x320&_nc_ht=instagram.fadb5-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=B-VHbUk2UxoAX-98u30&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD5eumxUBVoMvNMIyaxuL70Vp0bhd1hS2Oi2Ym-xdVhpA&oe=63A62A07&_nc_sid=8fd12b",
            gonderiResimLinki:
                "https://indigodergisi.com/wp-content/uploads/2016/02/beyrut-l%C3%BCbnan.jpg",
          ),
          GonderiKarti(
            adSoyad: "Mehmet",
            gecenSure: "8 saat önce",
            aciklama: "Stad mükemmel",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_960_720.jpg",
            gonderiResimLinki:
                "https://i20.haber7.net/resize/1280x720//haber/haber7/photos/2022/36/dunya_kupasinda_final_oynanacak_80_bin_kapasiteli_stat_acildi_1662788150_6268.jpg",
          ),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: NetworkImage(resimLinki),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

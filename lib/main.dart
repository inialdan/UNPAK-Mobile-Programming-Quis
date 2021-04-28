import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Travelodan',
    home: MyApp(),
  ));
}

class TourDestination {
  final int id;
  final String title;
  final String location;
  final String description;
  final String imglink;
  const TourDestination(
      {this.id, this.title, this.location, this.description, this.imglink});
}

List<TourDestination> data = const <TourDestination>[
  const TourDestination(
      id: 1,
      title: 'Danau Toba',
      location: 'Sumatera Utara',
      description:
          'Danau Toba sudah lama terkenal sebagai salah satu objek wisata Indonesia favorit yang sering dikunjungi sejak tahun 1980-an lho! Objek wisata Indonesia yang terkenal di dunia ini memiliki luas 1.145 kilometer persegi. Di tengah danau terdapat Pulau Samosir yang luasnya hampir sebanding dengan negara Singapura. Bisa bayangin kan Toppers, betapa megahnya Danau Toba ini? Selain terluas, danau ini juga termasuk salah satu danau terdalam di dunia dengan kedalaman sekitar 450 meter.',
      imglink:
          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/11/danau-toba-768x473.jpg'),
  const TourDestination(
      id: 2,
      title: 'Nusa Penida',
      location: 'Bali',
      description:
          'Pulau Bali, sudah tidak bisa dipungkiri lagi namanya memang merajalela ke seluruh dunia karena pemandangannya yang indah, budayanya yang masih kental terasa dan pantai nya yang eksotis. Saat Anda berkunjung ke Bali jangan heran kalau banyak banget turis berlalu lalang di sana, bahkan beberapa ada yang menetap di Bali lho! Salah satu objek wisata di Bali yang populer di mata dunia saat ini adalah Nusa Penida. Tempat wisata Indonesia favorit ini adalah pilihan tepat untuk yang suka melakukan Island Hoping, dan menikmati keindahan bawah laut dengan snorkeling. Dengan panorama pantai yang indah Nusa Penida dan pulau-pulau kecil sekitarnya menawarkan pengalaman berbeda dan tentunya akan memanjakan Toppers yang juga memiliki hobi fotografi.',
      imglink:
          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/11/nusa-penida-768x473.jpg'),
  const TourDestination(
      id: 3,
      title: 'Taman Laut Bunaken',
      location: 'Sulawesi Utara',
      description:
          'Destinasi wisata di Indonesia yang populer di mancanegara selanjutnya adalah Taman Laut Bunaken yang berada di Teluk Manado. Bunaken menjadi salah satu objek wisata di Indonesia yang mengundang decak kagum karena keindahan taman bawah lautnya yang sulit ditemukan di negara lain. Berkunjung ke Taman Laut Bunaken, Toppers akan menemukan keindahan kehidupan di dalam laut yang membuat mata kamu tidak bisa berhenti memandangnya. Di dalam taman laut ini terdapat 13 jenis terumbu karang yang didominasi dengan bebatuan laut. Selain itu, pemandangan yang paling menarik adalah adanya terumbu karang terjal vertikal yang menjulang ke bawah sedalam 25 – 50 meter. Tidak sampai di situ, mata kita akan dimanjakan dengan 91 jenis ikan yang ada di dalamnya. Tidak heran kalau Taman Laut Bunaken menjadi salah satu destinasi bagi para wisatawan terutama para pecinta laut. Apalagi tujuan wisata Indonesia favorit wisatawan asing ini menyediakan fasilitas untuk scuba diving dengan 20 titik penyelaman terbaik, di mana penyelam dapat kesempatan berenang di dasar laut dengan beragam biota laut yang menakjubkan.',
      imglink:
          'https://cdn.idntimes.com/content-images/community/2020/02/24327170-353832241756436-8888095027029344256-n-1e5208bbe49572c66522388b54456674_600x400.jpg'),
  const TourDestination(
      id: 4,
      title: 'Wakatobi',
      location: 'Sulawesi Tenggara',
      description:
          'Masih di Pulau Sulawesi, Taman Nasional Wakatobi juga merupakan salah satu tujuan wisata bawah laut yang populer dan mendunia. Dengan luas mencapai 13.900 km2, tujuan wisata terkenal asal Indonesia ini memiliki tak kurang dari 112 jenis terumbu karang yang bersimbiosis dengan ikan-ikan bawah laut sehingga menciptakan panorama bawah laut yang tiada tanding. Semuanya itu menjadikan Wakatobi sebagai salah satu surga menyelam bagi para traveler dari berbagai penjuru dunia.',
      imglink:
          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/11/wakatobi-768x473.jpg'),
  const TourDestination(
      id: 5,
      title: 'Kepulauan Raja Ampat',
      location: 'Papua Barat',
      description:
          'Surga dunia di Indonesia selanjutnya adalah kepulauan Raja Ampat yang terletak di Papua Barat dengan kekayaan laut terlengkap di bumi. Raja Ampat atau Empat Raja merupakan 4 pulau indah yang merupakan penghasil lukisan batu kuno. Empat pulau utama yang dimaksud adalah Waigeo, Salawati, Batanta, dan Misool. Nama-nama tersebut berasal dari mitos lokal dari warga di sekitar pulau Raja Ampat. Keindahan dan kemegahan dari objek wisata populer asal Indonesia ini mampu mengundang para wisatawan dari seluruh dunia untuk datang ke sini dan merasakan pengalaman sekaligus pemandangan yang tidak akan terlupakan. Dengan wilayah pulau mencakup hingga 4,6 juta hektar tanah dan laut, kita bisa menemukan 540 jenis karang, 1.511 spesies ikan, serta 700 jenis moluska. Perlu diketahui Toppers, menurut laporan The Nature Conservancy and Conservation International, ada sekitar 75% spesies laut dunia yang tinggal di pulau indah nan menakjubkan ini.',
      imglink:
          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2018/11/raja-ampat-768x473.jpg'),
];

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final title = "Travelodan";
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            children: List.generate(data.length, (index) {
              return Center(
                child: ChoiceCard(choice: data[index], item: data[index]),
              );
            })));
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);
  final TourDestination choice;
  final VoidCallback onTap;
  final TourDestination item;
  final bool selected;
  @override

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ArticleReadPage(index: data.indexOf(choice))));
      },
      child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(0),
                  child: Image.network(choice.imglink)),
              new Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(choice.title,
                        style: Theme.of(context).textTheme.title),
                    Text(choice.location,
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Text(choice.description.substring(0, 100) + '...'),
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}

class ArticleReadPage extends StatelessWidget {
  final int index;
  const ArticleReadPage({Key key, this.index}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Center(
      child: ChoiceCardRead(choice: data[index]),
    );
  }
}

class ChoiceCardRead extends StatelessWidget {
  const ChoiceCardRead({Key key, this.choice}) : super(key: key);
  final TourDestination choice;
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.all(0),
                    child: Image.network(choice.imglink)),
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(choice.title,
                          style: Theme.of(context).textTheme.title),
                      Text(choice.location,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(choice.description),
                    ],
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
      ),
    );
  }
}

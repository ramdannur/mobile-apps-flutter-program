import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gambar =
        "https://img.inews.co.id/media/822/files/inews_new/2022/03/07/puspen_kejagung.jpg";
    var judul =
        "Kejagung Kembalikan Berkas Perkara Ferdy Sambo Cs ke Bareskrim";
    var sumber = "Inews";
    var deskripsi =
        "Kejaksaan Agung mengembalikan berkas Ferdy Sambo dan tiga tersangka lainnnya ke Bareskrim. Keempatnya merupakan tersangka kasus pembunuhan Brigadir J.";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('detail', arguments: {
                'judul': judul,
                'gambar': gambar,
                'sumber': sumber,
                'deskripsi': deskripsi
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  gambar,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          judul,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          sumber,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
                        ),
                        Text(
                          deskripsi,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

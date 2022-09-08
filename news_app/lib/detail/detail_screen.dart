import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://img.inews.co.id/media/822/files/inews_new/2022/03/07/puspen_kejagung.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 230,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          "Kejagung Kembalikan Berkas Perkara Ferdy Sambo Cs ke Bareskrim",
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                    ),
                    InkWell(
                        onTap: () {
                          const snackBar =
                              SnackBar(content: Text("Share artikel ..."));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Icon(
                          Icons.share,
                          size: 28,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    "Kejaksaan Agung mengembalikan berkas Ferdy Sambo dan tiga tersangka lainnnya ke Bareskrim. Keempatnya merupakan tersangka kasus pembunuhan Brigadir J.",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.black)),
                const SizedBox(
                  height: 20,
                ),
                Text("Author : Ramdannur",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

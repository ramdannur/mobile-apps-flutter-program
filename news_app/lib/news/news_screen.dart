import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        itemNews(),
        itemNews(),
        itemNews(),
      ]),
    );
  }

  Widget itemNews() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('detail');
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  "https://img.inews.co.id/media/822/files/inews_new/2022/03/07/puspen_kejagung.jpg",
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
                          "Kejagung Kembalikan Berkas Perkara Ferdy Sambo Cs ke Bareskrim",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Inews",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
                        ),
                        Text(
                          "Kejaksaan Agung mengembalikan berkas Ferdy Sambo dan tiga tersangka lainnnya ke Bareskrim. Keempatnya merupakan tersangka kasus pembunuhan Brigadir J.",
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

import 'package:flutter/material.dart';

class NewsFeedPage2 extends StatelessWidget {
  const NewsFeedPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.assetImage),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String assetImage;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.assetImage,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    title: "Instagram quietly limits ‘daily time limit’ option",
    author: "MacRumors",
    assetImage: "assets/images/tarian.jpg",
    postedOn: "Yesterday",
  ),
  Article(
      title: "Google Search dark theme goes fully black for some on the web",
      assetImage: "assets/images/lukisan.jpg",
      author: "9to5Google",
      postedOn: "4 hours ago"),
  Article(
    title: "Check your iPhone now: warning signs someone is spying on you",
    author: "New York Times",
    assetImage: "assets/images/tarian1.jpg",
    postedOn: "2 days ago",
  ),
  Article(
    title:
        "Amazon’s incredibly popular Lost Ark MMO is ‘at capacity’ in central Europe",
    author: "MacRumors",
    assetImage: "assets/images/tarian2.jpg",
    postedOn: "22 hours ago",
  ),
  Article(
    title:
        "Panasonic's 25-megapixel GH6 is the highest resolution Micro Four Thirds camera yet",
    author: "Polygon",
    assetImage: "assets/images/lukisan1.jpg",
    postedOn: "2 hours ago",
  ),
  Article(
    title: "Samsung Galaxy S22 Ultra charges strangely slowly",
    author: "TechRadar",
    assetImage: "assets/images/lukisan2.jpg",
    postedOn: "10 days ago",
  ),
  Article(
    title: "Snapchat unveils real-time location sharing",
    author: "Fox Business",
    assetImage: "assets/images/tarian3.jpg",
    postedOn: "10 hours ago",
  ),
];

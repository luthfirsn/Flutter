import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas/widgets/album_card.dart';
import 'package:tugas/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(color: Color(0xFf1C7A74)),
          ),
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(1),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Selamat Siang",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RowAlbumCard(
                                  label: "Trending",
                                  image: AssetImage("assets/album7.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "EDM",
                                  image: AssetImage("assets/album8.jpg"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Worldcup2022",
                                  image: AssetImage("assets/album9.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Classics",
                                  image: AssetImage("assets/album10.jpg"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Recomended",
                                  image: AssetImage("assets/album12.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Hot Hits",
                                  image: AssetImage("assets/album11.jpg"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mix teratasmu",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Row(
                              children: [
                                Icon(Icons.notifications),
                                SizedBox(width: 16),
                                Icon(Icons.history),
                                SizedBox(width: 16),
                                Icon(Icons.settings),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            AlbumCard(
                              label: "Favorite",
                              image: AssetImage("assets/album3.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Power Gaming",
                              image: AssetImage("assets/album1.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Top 50-Global",
                              image: AssetImage("assets/top50.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Top songs - Global",
                              image: AssetImage("assets/album6.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Pop Mix",
                              image: AssetImage("assets/album2.jpg"),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Based on your recent listening",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                SongCard(
                                  image: AssetImage("assets/album12.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album2.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album8.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album11.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album9.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album7.jpg"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Recommended radio",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                SongCard(
                                  image: AssetImage("assets/album10.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album3.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album7.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album4.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album6.jpg"),
                                ),
                                SizedBox(width: 16),
                                SongCard(
                                  image: AssetImage("assets/album5.jpg"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}

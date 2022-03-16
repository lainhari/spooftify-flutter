import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spooftify/main.dart';
import 'package:spooftify/widgets/recent_history_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.settings),
                    ),
                    Text(
                      'Good Evening',
                      style: GoogleFonts.gothicA1(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverGrid.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 1,
                children: recentlyPlayed
                    .map((data) => RecentHistoryCard(
                        coverImage: 'assets/${data.cover}', name: data.name))
                    .toList(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'Recently Played',
                  style: GoogleFonts.gothicA1(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final album = recentlyPlayed[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/${album.cover}',
                              ),
                              Expanded(
                                child: Text(
                                  album.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: recentlyPlayed.length,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverToBoxAdapter(
                child: Text(
                  'New Releases For You',
                  style: GoogleFonts.gothicA1(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final album = recentlyPlayed[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/${album.cover}',
                              ),
                              Expanded(
                                child: Text(
                                  album.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: recentlyPlayed.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationIndex,
        onTap: (index) {
          setState(() {
            _bottomNavigationIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}

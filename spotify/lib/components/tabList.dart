import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify/components/tabCards.dart';
import 'package:spotify/constants.dart';

class TabList extends StatefulWidget {
  const TabList({super.key});

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        // color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: spotifyGreen,
          width: 3,
        ),
      ),
      height: height * 0.35,
      child: Column(
        children: [
          Gap(height * 0.02),
          DefaultTabController(
            length: 5,
            animationDuration: const Duration(milliseconds: 500),
            child: TabBar(
              labelPadding: const EdgeInsets.only(
                // bottom: 5,
                left: 10,
                right: 10,
              ),
              indicatorColor: const Color(0xFF1AB40C),
              indicatorWeight: 3,
              onTap: (value) {
                currentIndex = value;
              },
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  height: height * 0.03,
                  child: Text(
                    "Artists",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: height * 0.03,
                  child: Text(
                    "Podcasts",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: height * 0.03,
                  child: Text(
                    "Liked",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: height * 0.03,
                  child: Text(
                    "Trending",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: height * 0.03,
                  child: Text(
                    "Recommended",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          Gap(height * 0.02),
          Container(
            height: height * 0.26,
            padding: const EdgeInsets.all(5),
            // color: Colors.pinkAccent,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Gap(10);
              },
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return const TabCards(
                  title: "Artist Name",
                  url: "images/loser.jpg",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

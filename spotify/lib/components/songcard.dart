import 'package:flutter/material.dart';
import 'package:spotify/pages/musicplayer.dart';

class SongCard extends StatefulWidget {
  const SongCard({super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MusicPlayer(),
          ),
        );
      },
      child: Container(
        color: Colors.transparent,
        // width: width * 0.9,
        height: height * 0.16,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              margin: const EdgeInsets.all(20),
              color: const Color(0xFF1AB40C),
              child: Stack(
                children: [
                  Positioned(
                    top: height * 0.015,
                    left: height * 0.02,
                    child: Text(
                      "PLAYING",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  Positioned(
                    top: height * 0.04,
                    left: height * 0.02,
                    child: SizedBox(
                      height: 20,
                      width: 180,
                      child: Text(
                        "I Don't Think I Like Her",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ), //lyrics to be displayed line-by-line
                  ),
                  Positioned(
                    top: height * 0.08,
                    left: height * 0.02,
                    child: Text(
                      "Charlie Puth",
                      style: Theme.of(context).textTheme.displayMedium,
                    ), //lyrics to be displayed line-by-line
                  ),
                ],
              ),
            ),
            Positioned(
              right: -(width * 0.28),
              left: width * 0.2,
              top: -(width * 0.06),
              bottom: width * 0.05,
              child: Image.asset(
                  'images/charlie_puth.png'), //change  the name of artist by using a name variable
            ),
          ],
        ),
      ),
    );
  }
}

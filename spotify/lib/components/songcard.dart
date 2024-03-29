import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify/pages/musicplayer.dart';

class SongCard extends StatefulWidget {
  final String imageUrl;
  const SongCard({super.key, required this.imageUrl});

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
            builder: (context) => MusicPlayer(imageUrl: "images/loser.jpg"),
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
                fit: StackFit.loose,
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
            Gap(height * 0.01),
            Positioned(
              left: width * 0.6,
              bottom: height * 0.02,
              // right: width * 0.6,
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.contain,
                height: height * 0.16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

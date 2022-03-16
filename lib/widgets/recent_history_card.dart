import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentHistoryCard extends StatelessWidget {
  final String coverImage;
  final String name;

  const RecentHistoryCard({
    Key? key,
    required this.coverImage,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Row(
          children: [
            Image.asset(coverImage),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                name,
                style: GoogleFonts.gothicA1(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

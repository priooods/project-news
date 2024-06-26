import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      required this.newsLogo,
      required this.newsTitle,
      required this.newsDescription,
      required this.newsDate,
      required this.onPress});

  final String newsTitle,
      newsLogo,
      newsDescription;
  final DateTime newsDate;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(45),
                child: Image(
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.red,
                    );
                  },
                  image: NetworkImage(newsLogo),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsTitle,
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
                    ),
                    Text(
                      newsDescription,
                      style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height:4,
                    ),
                    Text(
                      DateFormat("dd MMMM yyyy").format(newsDate),
                      style: const TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

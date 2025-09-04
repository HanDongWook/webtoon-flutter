import 'package:flutter/material.dart';
import 'package:webtoon_flutter/screens/detail_screen.dart';

class WebtoonWidget extends StatelessWidget {
  final String title, thumb, id;
  const WebtoonWidget({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(title: title, thumb: thumb, id: id),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: "$title$id",
            child: Material(
              color: Colors.transparent,
              child: Text(
                title,
                style: TextStyle(fontSize: 22, color: Colors.green),
              ),
            ),
          ),
          SizedBox(height: 10),
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(10, 10),
                    color: Colors.black.withAlpha(60),
                  ),
                ],
              ),
              child: Image.network(thumb),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        title: Text(title, style: TextStyle(fontSize: 26)),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
            ],
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 22)),
        ],
      ),
    );
  }
}

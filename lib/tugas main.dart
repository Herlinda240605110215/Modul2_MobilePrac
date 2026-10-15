import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakFavorite(
                    warna: Colors.blue,
                    teks: 'Kotak 1',
                  ),
                  SizedBox(width: 20),
                  KotakFavorite(
                    warna: Colors.green,
                    teks: 'Kotak 2',
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakFavorite(
                    warna: Colors.orange,
                    teks: 'Kotak 3',
                  ),
                  SizedBox(width: 20),
                  KotakFavorite(
                    warna: Colors.purple,
                    teks: 'Kotak 4',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakFavorite extends StatelessWidget {
  final Color warna;
  final String teks;

  KotakFavorite({
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        ),
        SizedBox(height: 8),
        Text(teks),
      ],
    );
  }
}

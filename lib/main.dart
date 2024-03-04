import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NEW RECEIPE',
          style: TextStyle(
            fontWeight: FontWeight.w900
          ),
          ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Close',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
      
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.red,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Text(
                "Super Cool you are creating a new receipe!\nLet's get started",
                style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white
                ),
              ),
            ),
             Container(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Give your recipe a name",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukan Nama Menu',
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Estimasi Waktu Memasaka (menit)",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: 'Masukan Waktu Pembuatan',
                  hintStyle: TextStyle(fontSize: 12),
                  
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Deskripsi",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukan Deskripsi',
                  hintStyle: TextStyle(fontSize: 16.0),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null, // Set to null for unlimited lines
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Resep, bahan dan langkah",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukan Resep dan Cara Pembuatan',
                  hintStyle: TextStyle(fontSize: 16.0),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null, // Set to null for unlimited lines
              ),
            ),
            SizedBox(height: 32.0),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                onPressed: () {
                },
                child: Text(
                  'Add Menu',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

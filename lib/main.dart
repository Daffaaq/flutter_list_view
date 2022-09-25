import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            "MyApp",
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Navbar(),
            Header(),
            Expanded(child: Scroll()),
          ],
        ),
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  const Scroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: const <Widget>[
                    BeritaBesar(),
                    BeritaBesar(),
                    BeritaBesar(),
                    BeritaBesar(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BeritaBesar extends StatelessWidget {
  const BeritaBesar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset("assets/images/Pelatih.jpg"),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                  child: const Text(
                      "Antonio Conte dan Thomas Tuchel ribut di pinggir lapangan"),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
            child: const Text("London Aug 14, 2022"),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.purpleAccent)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/aubameyang.jpg'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: const Text(
              "Full Transfer aubameyang Ke Chelsea",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.pink,
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: const Text(
              "Transfer",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            "BERITA TERBARU",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "PERTANDINGAN HARI INI",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}

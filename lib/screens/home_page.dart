import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.search),
        actions: <Widget>[
          const CircleAvatar(
            backgroundImage:
                NetworkImage("https://source.unsplash.com/random/0"),
            radius: 18,
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Beautiful quarantine",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Text(
                "home offices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
              listTile(),
            ],
          ),
        ),
      ),
    );
  }

  Column listTile() {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Row(
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage("https://source.unsplash.com/random/1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "08, December 2021",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Warm plant based",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "decpration designed office",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.amber[400], size: 20),
                    Icon(Icons.star, color: Colors.amber[400], size: 20),
                    Icon(Icons.star, color: Colors.amber[400], size: 20),
                    Icon(Icons.star, color: Colors.amber[400], size: 20),
                    const Icon(
                      Icons.star_border,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://source.unsplash.com/random/2",
                      ),
                      radius: 15,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "John Wick",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

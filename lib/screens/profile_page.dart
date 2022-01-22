import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isFollow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: const Alignment(-0.9, -0.8),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://source.unsplash.com/random/9"),
                fit: BoxFit.cover,
              ),
            ),
            child: Opacity(
              opacity: 0.3,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "13, October 2021",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Minimalist neutral",
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
                const SizedBox(height: 5),
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
                const SizedBox(height: 10),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 13),
                Row(
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/random/0"),
                      radius: 15,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Posted by:",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          "John Wick",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const Spacer(),
                    OutlinedButton(
                      child: Text(
                        _isFollow ? "Following" : "+ Follow",
                        style: TextStyle(color: Colors.blue[700]),
                      ),
                      onPressed: () {
                        _isFollow = !_isFollow;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

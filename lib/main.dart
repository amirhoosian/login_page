import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [_getheder(), SizedBox(height: 15), _mainbody()],
        ),
      ),
    );
  }

  Widget _getheder() {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: double.infinity,
        height: 300,
        color: Colors.yellow[300],
        child: Center(
          child: Text(
            'login',
            style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _mainbody() {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 18),
            child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'entername',
                    hintText: "Enter email or phone number")),
          ),
        ),
        SizedBox(height: 10),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 18),
            child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'enterpass',
                    hintText: "Enter password")),
          ),
        ),
        SizedBox(height: 19),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 145),
                backgroundColor: Colors.yellow.shade300),
            onPressed: () {},
            child: Text(
              'Sing up',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            )),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Does not have account?",
              style: TextStyle(fontSize: 20.0),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Sing in",
                  style: TextStyle(color: Colors.orange, fontSize: 25.0),
                ))
          ],
        )
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

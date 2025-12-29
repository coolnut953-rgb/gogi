import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => MyAppstate();
}

int i = 49;

class MyAppstate extends State<MyApp> {
  List<String> photos = [
    "images/images (2).jpg",
    "images/images (3).jpg",
    "images/téléchargement (1).jpg",
    "images/téléchargement (2).jpg",
    "images/téléchargement.jpg",
    "images/photo-1508921912186-1d1a45ebb3c1.jpg",
    "images/images.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sothak", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(Icons.account_circle_sharp),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 76, 35, 141),
        ),
        body: Container(
          child: ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage("images/téléchargement.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("images/images (1).jpg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  "Rocks.D Xebec ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: LinearBorder(),
                    ),
                    onPressed: () {
                      setState(() {
                        i++;
                      });
                      print(i);
                    },
                    child: Text(
                      "follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(10),
                height: 90,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color.fromARGB(31, 54, 51, 51),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.center,
                          "follows: $i k",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.center,
                          "views: 236k",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 100,

                        child: Text(
                          textAlign: TextAlign.center,
                          "Shares: 49k",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("post"),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 248, 246, 246),
                      shape: LinearBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      "show all",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 214, 49, 49),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(9),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  itemCount: photos.length,
                  itemBuilder: (context, i) {
                    return Image.asset(photos[i], fit: BoxFit.cover);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

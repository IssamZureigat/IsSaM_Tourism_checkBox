import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

// statfull Start-----------------------
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool C1checkval = true;
  bool C2checkval = false;
  bool C3checkval = false;
  bool A1checkval = true;
  bool A2checkval = true;
  bool A3checkval = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(84, 220, 175, 175),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 60, 85, 91),
            title:
                Text("IsSaM Torizem", style: TextStyle(color: Colors.white60))),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(19, 126, 123, 123),
        ),
        body: ListView(children: [
          Container(
            color: Color.fromARGB(255, 50, 66, 73),
            height: 200,
            child: ListView(
              children: [
                Text("Countries",
                    style: TextStyle(
                        color: Color.fromARGB(255, 148, 133, 156),
                        fontSize: 20)),
// first checkbox
                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "3 Days",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("Maldives",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.flag_circle,
                      color: Color.fromARGB(210, 175, 87, 76),
                    ),
                    activeColor: Colors.black,
                    value: C1checkval,
                    onChanged: (val) {
                      setState(() {
                        C1checkval = val!;
                      });
                    }),
// sec check box
                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "7 Days",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("Istanbul",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.flag_circle_outlined,
                      color: Color.fromARGB(210, 175, 87, 76),
                    ),
                    activeColor: Colors.black,
                    value: C2checkval,
                    onChanged: (val) {
                      setState(() {
                        C2checkval = val!;
                      });
                    }),

// thierd checkbox

                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "FOREVER",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("JORDAN ",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.flag_circle_sharp,
                      color: Color.fromARGB(210, 175, 87, 76),
                    ),
                    activeColor: Colors.black,
                    value: C3checkval,
                    onChanged: (val) {
                      setState(() {
                        C3checkval = val!;
                      });
                    }),
              ],
            ),
          ),

//first image contaneir

          Container(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.TM1GkIhtCbZb8FTHgAIh4QHaFs?pid=ImgDet&rs=1")),
                Image(
                    image: NetworkImage(
                        "https://askthepilot.com/wp-content/uploads/2012/07/Islet.jpg")),
                Image(
                    image: NetworkImage(
                        "https://4.bp.blogspot.com/-DLjAz2-Krqk/U0pEVe2m1tI/AAAAAAAAA7s/ym3CglkFbwQ/s1600/Stunning.jpg")),
                Image(
                    image: NetworkImage(
                        "https://www.hdnicewallpapers.com/Walls/Big/River/River_HD_Images.jpg")),
              ]),
            ),
          ),
// End first container for images

          Container(
            color: Color.fromARGB(255, 50, 66, 73),
            height: 200,
            child: ListView(
              children: [
                Text("Activites",
                    style: TextStyle(
                        color: Color.fromARGB(255, 148, 133, 156),
                        fontSize: 20)),
// first checkbox
                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "30%",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("Stunder Restaurant",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.restaurant_menu,
                      color: Color.fromARGB(210, 10, 164, 90),
                    ),
                    activeColor: Colors.black,
                    value: A1checkval,
                    onChanged: (val) {
                      setState(() {
                        A1checkval = val!;
                      });
                    }),
// sec check box
                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "25%",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("Swimming Pool",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.pool,
                      color: Color.fromARGB(210, 10, 164, 90),
                    ),
                    activeColor: Colors.black,
                    value: A2checkval,
                    onChanged: (val) {
                      setState(() {
                        A2checkval = val!;
                      });
                    }),

// thierd checkbox

                CheckboxListTile(
                    checkColor: Color.fromARGB(255, 32, 154, 171),
                    isThreeLine: true,
                    subtitle: Text(
                      "Free",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    title: Text("Forest ",
                        style: TextStyle(fontSize: 20, color: Colors.white54)),
                    secondary: Icon(
                      Icons.park_sharp,
                      color: Color.fromARGB(210, 10, 164, 90),
                    ),
                    activeColor: Colors.black,
                    value: A3checkval,
                    onChanged: (val) {
                      setState(() {
                        A3checkval = val!;
                      });
                    }),
              ],
            ),
          ),

// second image contaeiner----

          Container(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.0e42f5d314af2a3027cc3ff7afd8e392?rik=4ZGpVE9R2ZLjMA&pid=ImgRaw&r=0")),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.CJQ8wXgU7oNdIpO1EofraQHaEK?w=259&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7")),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.of-rlOxjEVIV6srGE0dLTQHaEo?w=314&h=196&c=7&r=0&o=5&dpr=1.25&pid=1.7")),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ZAABPJBXWiS6eE4iwGveKAHaE7?w=286&h=191&c=7&r=0&o=5&dpr=1.25&pid=1.7")),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

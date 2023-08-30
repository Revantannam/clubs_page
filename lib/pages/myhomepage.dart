import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        TextStyle(color: Colors.teal, fontWeight: FontWeight.w500);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        title: Text(
          'Clubs',
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment(0.5, 1.0),
                colors: <Color>[
              Color(0xffd16ba5),
              Color(0xffc777b9),
              Color(0xffba83ca),
              Color(0xffaa8fd8),
              Color(0xff9a9ae1),
              Color(0xff8aa7ec),
              Color(0xff79b3f4),
              Color(0xff69bff8),
              Color(0xff52cffe),
              Color(0xff41dfff),
              Color(0xff46eefa),
              Color(0xff5ffbf1),
              // background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8,
              // #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
            ])),
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            RowClubs(
              assetimage1: 'assets/ids_logo.jpeg',
              clubName1: 'IDS',
              assetimage2: 'assets/iridescence_logo.jpeg',
              clubName2: 'IRIDESCENCE',
            ),
            SizedBox(
              height: 10.0,
            ),
            RowClubs(
              assetimage1: 'assets/iv_labs_logo.png',
              clubName1: 'IV LABS',
              assetimage2: 'assets/ecell_logo.png',
              clubName2: 'E-CELL',
            ),
            SizedBox(
              height: 10.0,
            ),
            RowClubs(
              assetimage1: 'assets/Octaves_logo.png',
              clubName1: 'OCTAVES',
              assetimage2: 'assets/hallabol_logo.jpeg',
              clubName2: 'HALLABOL',
            ),
            SizedBox(
              height: 10.0,
            ),
            RowClubs(
              assetimage1: 'assets/ids_logo.jpeg',
              clubName1: 'IDS',
              assetimage2: 'assets/iridescence_logo.jpeg',
              clubName2: 'IRIDESCENCE',
            ),
            SizedBox(
              height: 10.0,
            ),
            RowClubs(
              assetimage1: 'assets/iv_labs_logo.png',
              clubName1: 'IV LABS',
              assetimage2: 'assets/ecell_logo.png',
              clubName2: 'E-CELL',
            ),
            SizedBox(
              height: 10.0,
            ),
            RowClubs(
              assetimage1: 'assets/Octaves_logo.png',
              clubName1: 'OCTAVES',
              assetimage2: 'assets/hallabol_logo.jpeg',
              clubName2: 'HALLABOL',
            ),
          ],
        ),
      ),
    );
  }
}
jhgfx
class RowClubs extends StatelessWidget {
  final String assetimage1;
  final String assetimage2;
  final String clubName1;
  final String clubName2;
  const RowClubs({
    super.key,
    required this.assetimage1,
    required this.assetimage2,
    required this.clubName1,
    required this.clubName2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Clubs(
          assetImage: assetimage1,
          clubName: clubName1,
          welcome: 'Welcome to $clubName1',
        ),
        Clubs(
          assetImage: assetimage2,
          clubName: clubName2,
          welcome: 'Welcome to $clubName2',
        ),
      ],
    );
  }
}

class Clubs extends StatelessWidget {
  final String assetImage;
  final String clubName;
  final String welcome;
  const Clubs({
    super.key,
    required this.assetImage,
    required this.clubName,
    required this.welcome,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(),
                  borderRadius: BorderRadius.circular(20.0)),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: Text(welcome),
                        content: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    icon: Icon(Icons.account_box),
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Contact",
                                    icon: Icon(Icons.phone),
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText:
                                        "What interests you to join this club?",
                                    icon: Icon(Icons.message),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: Text("Cancel"),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          TextButton(
                            child: Text("Submit"),
                            onPressed: () => Navigator.pop(context, 'Submit'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                      child: Image.asset(
                        assetImage,
                        fit: BoxFit.contain,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
          Text(
            clubName,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

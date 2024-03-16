import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route App',
      initialRoute: '/',
      routes: {
        '/': (context) => Firstroute(),
        'second': (context) => Secondroute(),
        'third': (context) => Thirdroute(),
      },
    );
  }
}

class Firstroute extends StatelessWidget {
  const Firstroute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color(0xFFEEE4B1),
      ),
      backgroundColor: Colors.yellow,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4CCD99), // Set the background color here
              ),
              child: Text(
                'Welcome To Natures World \n\n   Everything is Free',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text('1) Photography'),
              onTap: () {
                Navigator.pushNamed(context, 'second');
              },
            ),
            ListTile(
              title: Text('2) Nature'),
              onTap: () {
                Navigator.pushNamed(context, 'third');
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/now.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.blue,
            width: 4.0, // Adjust border width as needed
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/h.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16.0), // Adding some spacing
            Align(
              alignment: Alignment.center,
              child: Text(
                'Life is More Beautiful With Photography',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20.0,
                  wordSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 16.0), // Adding some more spacing
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'second');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  elevation: 6,
                  backgroundColor:
                      Color(0xFF4CCD99), // Set the background color here
                ),
                child: Text('Learn About Photography'),
              ),
            ),

            Image.asset(
              'assets/d.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16.0), // Adding some spacing
            Text(
              'Nature is Real',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                wordSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0), // Adding some more spacing
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'third');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF4CCD99), // Set the background color here
                  minimumSize: Size(double.infinity, 50),
                  elevation: 6,
                ),
                child: Text(
                  'Nature Is Beautiful',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

class Secondroute extends StatelessWidget {
  const Secondroute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo-Graphy'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/this.jpg'), // Update the image path
            fit: BoxFit.cover, // Ensure the image fills the entire container
          ),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top:400.0),
        child: Column(
          children: [
            Align(
               alignment: Alignment.bottomCenter,
              child: Text(
                textAlign:TextAlign.end,
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen[100],
                  ),
                  'Photography Is\n'
                  '    My Hobby'
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

class Thirdroute extends StatelessWidget {
  const Thirdroute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautifull Nature'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/d.jpg'), // Update the image path
            fit: BoxFit.cover, // Ensure the image fills the entire container
          ),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top:400.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                  textAlign:TextAlign.end,
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen[100],
                  ),
                  'Nature Is\n'
                      '    God Gifted'
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

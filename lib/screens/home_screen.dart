import 'package:flutter/material.dart';
import 'package:my_flutter/screens/profile_screen.dart';
import 'package:my_flutter/widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  int _selectedItem = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedItem = index;
    });
    if (index == 4) {
      // Navigator.pushNamed(context, '/profile');

      // Navigator.pushReplacementNamed(context, '/profile',
      //     arguments: {'name': 'Ashok ', 'email': 'a@a.com'});

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Profile(),
              settings: const RouteSettings(
                  arguments: {'name': 'Ashok ', 'email': 'a@a.com'})));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () =>
                    {Navigator.pushNamed(context, '/notification')},
                icon: const Icon(Icons.notifications),
                iconSize: 30,
              ),
              Positioned(
                  top: 11,
                  bottom: 30,
                  left: 26,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red[500],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '10',
                      style: TextStyle(fontSize: 10),
                    ),
                  ))
            ],
          )
        ],
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            print('Card clicked');
          },
          splashColor: Colors.green.withAlpha(80),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                title: Text('Title'),
                subtitle: Text(
                    'Sub title Sub titleSub titleSub titleSub titleSub title'),
                isThreeLine: true,
                dense: true,
                trailing: Icon(Icons.delete),
                // leading: Icon(Icons.label),
                leading: FlutterLogo(
                  size: 20,
                ),
              ),
              Image.asset(
                'assets/images/img.jpg',
                height: 200.0,
                width: 200.0,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: _selectedItem,
        onTap: _onTapItem,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

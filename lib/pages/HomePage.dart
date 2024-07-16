import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
        title: const Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Adjust spacing as needed
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'YOUR MUSIC PLAYGROUND',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Discover and enjoy the latest music tracks.',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        centerTitle: false, // Disable centering if needed
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.abc,
              color: Colors.white,
              size: 100,
            )),
            ListTile(
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/homepage')
              },
              leading: const Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                'Search',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                'favourite',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.playlist_play,
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                'Playlist',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.watch_later,
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                'Listen later',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.radio,
                size: 40,
                color: Colors.white,
              ),
              title: Text(
                'Radio',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      // body: const Homepage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favourite',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.radio),
              label: 'Radio',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),
              label: 'Playlist',
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}

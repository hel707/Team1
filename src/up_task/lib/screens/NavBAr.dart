import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Cry0Cell'),
            accountEmail: Text('Team01@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://jakemiller.net/wp-content/uploads/2018/08/cropped-smile-bitmoji.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/508/112/HD-wallpaper-abstract-summer-landscape-valley-sunset-mountains-abstract-nature-backgrounds-abstract-mountains-landscape-artwork-abstract-landscape.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Reminders'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 22,
                height: 22,
                child: Center(
                  child: Text(
                    '99+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}

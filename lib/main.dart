import 'package:flutter/material.dart';
import 'Apps.dart';
import 'Skills.dart';
import 'Experiences.dart';
import 'About.dart';
import 'Certificates.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.black54,
        hintColor: Colors.black54,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Changed the length to 5 for the five tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Muksitul Islam",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColorLight,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.white),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.white),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.white),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.apps_outage_outlined, color: Colors.white),
                text: 'Apps',
              ),
              Tab(
                icon: Icon(Icons.card_membership, color: Colors.white),
                text: 'Certificates',
              ),

            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      "Muksitul Islam",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: const Text(
                      "muksitul15-3962@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://www.bing.com/search?q=plagiarism+checker&gs_lcrp=EgZjaHJvbWUqBwgFEEUYwgMyBwgAEEUYwgMyBwgBEEUYwgMyBwgCEEUYwgMyBwgDEEUYwgMyBwgEEEUYwgMyBwgFEEUYwgMyBwgGEEUYwgMyBwgHEEUYwgPSAQwxNzA0OTMyM2owajSoAgiwAgE&FORM=ANAB01&PC=U531',
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    // Add logic for Home onTap
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    // Add logic for Settings onTap
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://mail.google.com/mail/u/0/#inbox');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.link,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'LinkedIn',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://www.linkedin.com/in/muksitul-islam-718811204/');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.facebook,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://www.facebook.com/MI9Official01');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_tree_sharp,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Projects in Github',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/MI9JAHIN');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.note_alt_sharp,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'Get CV',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://drive.google.com/drive/folders/1mfip8SsrKvhIZ8EfbY1cdrlW0ucs2hmf');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.lightGreenAccent,
                  ),
                  title: Text(
                    'More About me',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://sites.google.com/diu.edu.bd/muksitulislam/home');
                  },
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Skills(),
            Experiences(),
            Apps(),
            Certificates(),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}



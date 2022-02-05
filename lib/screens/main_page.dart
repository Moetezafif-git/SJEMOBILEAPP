// page where all created/assigned tasks will show up,
// a search bar and some filters exist to help users find relevent content.
// tasks are organized by completion status into tabs.
// users are able to browse avaible tasks, use filters, move to different

import 'package:flutter/material.dart';
import 'package:sje_mobile_app/screens/main__page_subpages/calendar_page.dart';
import 'package:sje_mobile_app/screens/main__page_subpages/resources_page.dart';
import 'package:sje_mobile_app/screens/main__page_subpages/tasks_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentSelection = 1;
  List<Widget> screens = const [
    ResourcesPage(),
    TasksPage(),
    CalenderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: screens[_currentSelection],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/sje_logo.png'),
                ),
                accountName: Text('Welcome random person!', style: TextStyle(fontSize: 20),),
                accountEmail: Text('junior.entreprise@supcom.tn', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/drawer_decoration.jpg'),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Poles', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900)),
              ),
              ListTile(
                leading: const Icon(Icons.code_rounded, size: 25, color: Colors.black,),
                title: const Text('Projet', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.campaign_rounded, size: 25, color: Colors.black,),
                title: const Text('Marketing', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.store, size: 25, color: Colors.black,),
                title: const Text('Dev Commercial', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              ListTile(
                leading: const Icon(Icons.people_alt, size: 25, color: Colors.black),
                title: const Text('Human Resources', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              const Divider(color: Colors.grey),
              ListTile(
                leading: const Icon(Icons.event, size: 25, color: Colors.black,),
                title: const Text('Events', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
              const SizedBox(height: 280),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () { Navigator.pushNamed(context, '/');}, icon: const Icon(Icons.logout_rounded, size: 30)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.subtitles_outlined, size: 30)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.settings, size: 30)),
                ],
              )
            ],
          ),
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.orange,
          selectedIconTheme: const IconThemeData(color: Colors.orange, size: 40.0),
          elevation: 5,
          currentIndex: _currentSelection,
          onTap: (index) { 
            setState(() {
              _currentSelection = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Resources',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'Calender',
            ),
          ],
        ),
      ),
    );
  }
}

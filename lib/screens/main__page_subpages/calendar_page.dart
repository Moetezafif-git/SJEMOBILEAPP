import 'package:flutter/material.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  final _title = 'Calendar';

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          pinned: true,
          floating: true,
          title: Text(_title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drawer_decoration.jpg'), 
                fit: BoxFit.fill
              ),
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(
                  text: 'Untouched',
                  icon: Icon(Icons.flag, color: Colors.white)),
              Tab(
                  text: 'In progress',
                  icon: Icon(Icons.show_chart, color: Colors.white)),
              Tab(
                  text: 'Done',
                  icon: Icon(Icons.task_alt_rounded, color: Colors.white)),
            ],
          ),
        ),
      ],
      body: TabBarView(
        children: [
          _buildCalendarPage('calendar untouched'),
          _buildCalendarPage('calendar in progress'),
          _buildCalendarPage('calendar completed'),
        ],
      ),
    );
  }

  Widget _buildCalendarPage(String page) => ListView.separated(
        padding: const EdgeInsets.all(10.0),
        itemCount: 25,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) => Card(
            elevation: 5,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('$page n°${index.toString()}'))),
      );
}

import 'package:flutter/material.dart';

class ResourcesPage extends StatefulWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  final TextEditingController _searchQueryController = TextEditingController();
  final _title = 'Calendar';
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          pinned: true,
          leading: _isSearching
              ? BackButton(
                  color: Colors.white, onPressed: toggleSearchBarVisibility)
              : null,
          floating: true,
          title: _isSearching ? _buildSearchBar() : Text(_title),
          actions: buildActions(),
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
                  text: 'Undiscovered',
                  icon: Icon(Icons.flag, color: Colors.white)),
              Tab(
                  text: 'Opened',
                  icon: Icon(Icons.show_chart, color: Colors.white)),
              Tab(
                  text: 'comleted',
                  icon: Icon(Icons.task_alt_rounded, color: Colors.white)),
            ],
          ),
        ),
      ],
      body: TabBarView(
        children: [
          _buildTasksPage('untouched resource'),
          _buildTasksPage('in progress resource'),
          _buildTasksPage('completed resource'),
        ],
      ),
    );
  }

  List<Widget> buildActions() {
    List<Widget> actions = [];
    if (!_isSearching) {
      actions.add(IconButton(
          onPressed: toggleSearchBarVisibility,
          icon: const Icon(Icons.search, color: Colors.white)));
    }
    actions.addAll([
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings, color: Colors.white),
      ),
    ]);
    return actions;
  }

  Widget _buildTasksPage(String page) => ListView.separated(
        padding: const EdgeInsets.all(10.0),
        itemCount: 25,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) => Card(
            elevation: 5,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('$page n??${index.toString()}'))),
      );

  Widget _buildSearchBar() => TextField(
        textInputAction: TextInputAction.search,
        controller: _searchQueryController,
        autofocus: true,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search resources',
          hintStyle: const TextStyle(color: Colors.white),
          suffixIcon: IconButton(onPressed: _searchQueryController.clear, icon: const Icon(Icons.clear, color: Colors.white,))
        ),
      );

  void toggleSearchBarVisibility() {
    setState(() {
      _isSearching = !_isSearching;
    });
  }
}

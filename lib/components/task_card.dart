import 'package:flutter/material.dart';
import 'package:sje_mobile_app/models/task.dart';

class TaskCard extends StatelessWidget {
  //final Task task; required this.task
  const TaskCard({Key? key}) : super(key: key);

  static const Map<String, Color> priorityMapping = {
    'high': Colors.red,
    'medium': Colors.orange,
    'low': Colors.green,
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.push_pin,
                            color:
                                Colors.red) //priorityMapping[task.priority]),
                        ),
                    const Text(
                      'task name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                        width: 300,
                        alignment: Alignment.centerRight,
                        child: const Text('Due   ${5} - ${'Nov'}')),
                  ],
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: Text('assigned by: someone',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromARGB(255, 198, 198, 198),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromARGB(255, 198, 198, 198),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromARGB(255, 198, 198, 198),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color.fromARGB(255, 198, 198, 198),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle, color: Colors.lightBlue),
                          iconSize: 30)
                    ],
                  ),
                ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                    child: Text('Progress ${75}%',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500))),
                Container(
                  padding: const EdgeInsets.fromLTRB(30.0, 5, 30.0, 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: LinearProgressIndicator(
                      color: Color.fromARGB(255, 150, 150, 150),
                      minHeight: 8,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(255, 82, 221, 70)),
                      value: 0.75,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

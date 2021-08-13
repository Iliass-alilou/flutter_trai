import 'package:first_app/modules/ModulesFor_TodoApp/ArchivedTasks.dart';
import 'package:first_app/modules/ModulesFor_TodoApp/DoneTasks.dart';
import 'package:first_app/modules/ModulesFor_TodoApp/NewTasks.dart';
import 'package:first_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';

class ToDo_App extends StatefulWidget {
  @override
  _ToDo_AppState createState() => _ToDo_AppState();
}

class _ToDo_AppState extends State<ToDo_App> {

  List<Widget> screens =[
    new_Tasks(),
    done_Tasks(),
    archived_Tasks()
  ];

  List <String> title_appBar =[
    "New Tasks",
    "Done Tasks",
    "Archived Tasks"
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int curentIndex = 0 ;
  late Database database ;
  bool isBottomSheetShown = false;
  IconData faIcon = Icons.edit;
  var titleCotroller = TextEditingController();
  var timeCotroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            title_appBar[curentIndex],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          if (isBottomSheetShown)
          {
            Navigator.pop(context);
            isBottomSheetShown = false;
            setState(() {
              faIcon = Icons.edit;
            });
          }
          else {
            scaffoldKey.currentState?.showBottomSheet(
                  (context) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          textField(
                              controller: titleCotroller,
                              type: TextInputType.text,
                              label: 'title',
                              Prefexicon: Icons.title,
                              onTap: (){
                                return null;
                              },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          textField(
                            controller: timeCotroller,
                            type: TextInputType.datetime,
                            label: 'time',
                            Prefexicon: Icons.access_time,
                            onTap: ()
                            {
                              // showTimePicker(
                              //     context: context,
                              //     initialTime: TimeOfDay.now(),
                              // ).then((value)
                              // {
                              //   print(value.toString());
                              // });
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
            );
            setState(() {
              faIcon = Icons.add;
            });
            isBottomSheetShown = true;
          }
        },
        child: Icon(
          faIcon,
        ),
      ),
      body: screens[curentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,

            ),
            label: ' Done Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive,
            ),
            label: ' Archived Tasks',
          )
        ],
        currentIndex: curentIndex,
        onTap: (index){
          setState(() {
            curentIndex = index;
          });
        },
      ),
    );
  }

  void createDatabase () async
  {
     database = await openDatabase(
      'toDo.db',
      version: 1,
      onCreate: (database , version) 
      {
        print("database created");
        database.execute("CREATE TABLE tasks (id INTEGER PRIMARY KEY, title Text, date Text,  status Text)").then((value)
        {
          print("database is succefully created");
        }).catchError((error){
          print("error when creating Table ${error.toString()}");
        });
      }
    );
  }
  void insertIntoDatabase ()
  {
    database.transaction((txn) async
    {
      txn.rawInsert('INSERT INTO tasks (title, date , status)VALUES("first Insert","020202","done status")').then((value)
      {
        print ("$value inserted successfully ");
      }).catchError((error)
      {
        print("error when when iserting ${error.toString()}");
      });
      return null;
    });
  }
  Future<String> getName() async
  {
    return "Hello It's me , Flutter";
  }
}

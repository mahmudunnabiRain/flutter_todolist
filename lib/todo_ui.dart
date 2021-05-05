import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState){
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              title: Text(
                  "Add Task"
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "ADD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          });
        }
    );
  }

  Widget myCard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
              "$task",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          onLongPress: () {
            print("Delete");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        child: Column(

          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myCard("kemon aso?"),
            myCard("kemon aso? valo nai?"),
            myCard("kemon asoa asldkalsdklaskdalskdasldksaldkalsdk?"),
            myCard("kemon \nasoa \nasldkalsdklaskdalskdasldksaldkalsdk?"),
            myCard("kemon asoa asldkalsdklaskdalskdasldksaldkalsdk?"),
            myCard("kemon aso?"),
            myCard("kemon aso?"),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        tooltip: 'Add ToDo',
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
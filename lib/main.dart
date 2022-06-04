import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("ListView Design"),
      ),
      body: ListViewBuilder(),
    ),
  ));
}

// class cardViewDesign extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           ListTile(
//             leading: Icon(Icons.person_add),
//             title: Text("Junaid"),
//             subtitle: Text("Flutter App developer"),
//             trailing: Icon(Icons.arrow_forward),
//             onTap: () {},
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(onPressed: () {}, child: Text("Add")),
//               TextButton(onPressed: () {}, child: Text("Remove")),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class ListViewBuilder extends StatelessWidget {
  // List<int> count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, index) {
        return Divider(
          // height: 10,
          thickness: 2,
          indent: 25,
          endIndent: 25,
          color: Colors.green,
        );
      },
      itemCount: 30,
      itemBuilder: (BuildContext context, index) {
        return Card(
          // color: Colors.black12,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text("Junaid"),
                subtitle: Text("Flutter App developer"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add",
                        style:
                            TextStyle(color: Colors.yellowAccent, fontSize: 20),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text("Remove",
                          style: TextStyle(color: Colors.red, fontSize: 20))),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

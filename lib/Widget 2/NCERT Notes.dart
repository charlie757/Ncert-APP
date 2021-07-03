import 'package:flutter/material.dart';
import 'package:ncert2/Widget%202/data.dart';
import 'package:ncert2/Widget3%20NCERT%20Books/NCERTNotesPage.dart';

class NCERTNotes extends StatelessWidget {
  const NCERTNotes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.blue,
      Colors.orangeAccent,
      Colors.red,
      Colors.cyan,
      Colors.orange,
      Colors.purple,
      Colors.red,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("NCERT Notes"),
      ),
      body: GridView.builder(
          itemCount: modal1.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            NCERTBooks ncertBooks = modal1[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NCERTNotesPage(
                                ncertBooks: ncertBooks,
                              )));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: colors[index],
                        child: Text(ncertBooks.number),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: ncertBooks.name),
                        TextSpan(text: " - Notes"),
                      ]))
                    ],
                  ),
                ));
          }),
    );
  }
}

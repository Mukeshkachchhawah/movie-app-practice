import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Card(
              child: Container(
               height: 60,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ListTile(leading: Icon(Icons.search),
                title: TextField(decoration: InputDecoration(hintText: "Search"),),
                trailing: Icon(Icons.mic_none_outlined),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

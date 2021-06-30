import 'package:flutter/material.dart';
import 'package:inventory_smells/data/items.dart';
import 'package:inventory_smells/models/item.dart';

class MainMenu extends StatelessWidget {
  List<Item> items = itemsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inventory List',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('Salam'),
              accountName: Text('gmail'),
              currentAccountPicture: CircleAvatar(),
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(items[index].name),
              subtitle: Text(items[index].type),
              trailing: Text('${items[index].quantity.toString()} items'),
            ),
          );
        },
      ),
    );
  }
}

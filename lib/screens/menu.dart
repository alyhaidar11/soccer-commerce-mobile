import 'package:flutter/material.dart';
import 'package:soccer_commerce/screens/productlist_form.dart';
import 'package:soccer_commerce/widgets/left_drawer.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});

    final String nama = "Mohammad Aly Haidarulloh";
    final String npm = "2406425804";
    final String kelas = "E";

    final List<ItemHomepage> items = [
        ItemHomepage("All Product", Icons.all_inbox),
        ItemHomepage("My Product", Icons.playlist_add_check_rounded),
        ItemHomepage("Create Product", Icons.add),
      ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Soccer Commerce',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
            ),

            drawer: LeftDrawer(),

            body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        const SizedBox(height: 16.0),

                        Center(
                          child: Column(

                            children: [
                              
                              GridView.count(
                                primary: true,
                                padding: const EdgeInsets.all(20),
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 3,
                                shrinkWrap: true,

                                children: items.map((ItemHomepage item) {
                                  return ItemCard(item);
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
              ),
            ),
        );
    }
}

class InfoCard extends StatelessWidget {

  final String title;  
  final String content;  

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
 final String name;
 final IconData icon;

 ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (item.name == "All Product") {
      backgroundColor = Colors.blue;
    } else if (item.name == "My Product") {
      backgroundColor = Colors.green;
    } else if (item.name == "Create Product") {
      backgroundColor = Colors.red;
    } else {
      backgroundColor = Theme.of(context).colorScheme.secondary; 
    }

    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        onTap: () {
          if (item.name == "Create Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductFormPage()),
            );
          } else {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
              );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

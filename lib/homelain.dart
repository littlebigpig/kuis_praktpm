import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'name': 'Nasi Goreng', 'price': 15000},
    {'name': 'Mie Ayam', 'price': 12000},
    {'name': 'Sate Ayam', 'price': 20000},
    {'name': 'Bakso', 'price': 10000},
    {'name': 'Soto Ayam', 'price': 13000},
    {'name': 'Gado-Gado', 'price': 14000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app, color: Colors.redAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Selamat Datang, Admin!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Klik untuk ke halaman About',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Daftar Menu:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset('assets/plate.png', width: 50, height: 50),
                      title: Text(menuItems[index]['name']),
                      subtitle: Text('Rp ${menuItems[index]['price']}'),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('Pesan'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
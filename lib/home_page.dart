import 'package:flutter/material.dart';
import 'package:kuisbanhpls/about_page.dart';
import 'makanan_page.dart';
import 'login_page.dart';
import 'listmenu.dart';

class HomePage extends StatefulWidget {
  final String Username;

  const HomePage({super.key, required this.Username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [SizedBox(height: 10),_BannerWidget(), Expanded(child: _ListViewWidget())],
      ),
    );
  }

  Widget _BannerWidget() {
    return Column(
      children: [
        Text(
          "Selamat Datang, ${widget.Username}!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
        );},
          child: Text(
            "Klik untuk ke halaman about",
            style:  TextStyle(color: Colors.green,),
        ),),
        SizedBox(height: 20),
        Text(
          "Daftar Menu:",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
          ),
      ],
    );
  }

  Widget _ListViewWidget() {
    return Expanded(
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                '${menuItems[index]["image"]}',
                width: 50,
                height: 50,
              ),
              title: Text('${menuItems[index]["nama"]}'),
              subtitle: Text('Rp ${menuItems[index]["harga"]}'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => MakananPage(
                            Nama: menuItems[index]["nama"] ?? "Kosong",
                            Harga: double.parse(
                              menuItems[index]["harga"] ?? "0",
                            ),
                            Image:
                                menuItems[index]["image"] ?? "images/home.jpg",
                          ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Pesan'),
              ),
            ),
          );
        },
      ),
    );
  }
}

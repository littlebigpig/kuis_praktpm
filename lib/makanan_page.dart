import 'package:flutter/material.dart';
import 'login_page.dart';

class MakananPage extends StatefulWidget {
  final String Nama;
  final double Harga;
  final String Image;

  const MakananPage({
    super.key,
    required this.Nama,
    required this.Harga,
    required this.Image,
  });

  @override
  State<MakananPage> createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  final TextEditingController _jumlahController = TextEditingController();
  double _totalHarga = 0;

  void _hitungTotal() {
    int jumlah = int.tryParse(_jumlahController.text) ?? 0;
    setState(() {
      _totalHarga = jumlah * widget.Harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Order"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [_BannerWidget(), SizedBox(height: 16), _Perkalian()],
        ),
      ),
    );
  }

  Widget _BannerWidget() {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.Image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _Perkalian() {
    return Column(
      children: [
        Text(
          widget.Nama,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text("Harga : Rp ${widget.Harga}"),
        Padding(
          padding: EdgeInsets.all(16),
          child: TextFormField(
            controller: _jumlahController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Masukkan Jumlah",
            ),
          ),
        ),

        ElevatedButton(
          onPressed: _hitungTotal,
          style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
          child: Text("Submit"),
        ),
        SizedBox(height: 20),
        Text(
          "Total Harga: Rp $_totalHarga",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

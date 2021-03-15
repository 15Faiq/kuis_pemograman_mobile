import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(kertas());

class kertas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Mainkertas();
}

class Mainkertas extends State<kertas> {
  final panjangAController = TextEditingController();
  final panjangBController = TextEditingController();
  final lebarAController = TextEditingController();
  final lebarBController = TextEditingController();
  double _inputpanjangA = 0;
  double _inputlebarA = 0;
  double _inputpanjangB = 0;
  double _inputlebarB = 0;
  double _panjang = 0;
  double _lebar = 0;
  double _luas = 0;

  void rumuskertas() => setState(() {
        _inputpanjangA = double.parse(panjangAController.text);
        _inputlebarA = double.parse(lebarAController.text);
        _inputpanjangB = double.parse(panjangBController.text);
        _inputlebarB = double.parse(lebarBController.text);

        _panjang = _inputpanjangA / _inputpanjangB;
        _lebar = _inputlebarA / _inputlebarB;
        _luas = _panjang * _lebar;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Potong Kertas"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Luas Kertas Plano",
                style: TextStyle(fontSize: 18),
              ),
              TextFormField(
                controller: panjangAController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Panjang Kertas Plano",
                    hintText: "Masukan Panjang kertas",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: lebarAController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Lebar Kertas Plano",
                    hintText: "Masukan Lebar kertas",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Luas Kertas ",
                style: TextStyle(fontSize: 18),
              ),
              TextFormField(
                controller: panjangBController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Panjang Kertas",
                    hintText: "Masukan Panjang kertas",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: lebarBController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Lebar Kertas",
                    hintText: "Masukan Lebar kertas",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    "Potong",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: rumuskertas,
                  color: Colors.red,
                ),
              ),
              
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hasil Potong',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Text(
                      _luas.toStringAsFixed(0),
                      style: TextStyle(fontSize: 20),
                    ),
                     
                  ],
                ),
                margin: EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app_laundry_bismillah/customer_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_laundry_bismillah/main.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({super.key});

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          //bg
          Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(colors: <Color>[
              Color.fromRGBO(252, 254, 252, 1),
              Color.fromARGB(255, 252, 239, 249),
            ])),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Image.asset("images/second_pattern.png"),
          ),
          //app Bar
          Container(
              width: double.infinity,
              height: 67,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromRGBO(119, 191, 242, 1),
                        Color.fromRGBO(212, 231, 244, 1),
                      ]),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7)
                  ]),
              child: Row(children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20)),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomerInfo()));
                    },
                    child: Container(
                      child: Image.asset(
                        "images/icon_back.png",
                        width: 34,
                        height: 34,
                      ),
                    ),
                  );
                }),
                Padding(padding: EdgeInsets.only(left: 13)),
                Text('New Order',
                    style: GoogleFonts.openSans(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        textStyle: TextStyle(letterSpacing: 3.0)))
              ])),
          Container(
            padding: EdgeInsets.only(top: 130),
            alignment: Alignment.topCenter,
            child: Text(
              'INPUT DATA',
              style: GoogleFonts.openSans(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  textStyle: TextStyle(letterSpacing: 1.0)),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              width: 900,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Color.fromRGBO(71, 71, 102, 1), width: 6.0),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 248, 232, 246),
                      Color.fromARGB(255, 219, 222, 241),
                      Color.fromARGB(255, 181, 186, 214),
                      Color.fromARGB(255, 149, 158, 211),
                    ]),
              ),
              child: Column(children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 15)),
                Container(
                    child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Waktu',
                                style: GoogleFonts.roboto(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 120,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 1, 32, 44),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Jam bahara mhanks?',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ]),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Tanggal',
                                style: GoogleFonts.roboto(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 210,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 1, 32, 44),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Naik Tanggal',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ]),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Metode Pengambilan',
                                style: GoogleFonts.roboto(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 210,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 1, 32, 44),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'cash or duel?',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ]),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Jenis Layanan',
                                style: GoogleFonts.roboto(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5)),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 210,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 1, 32, 44),
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: 'Reguler/express/ekonomis',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ]),
                      ]),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    width: double.infinity,
                    height: 5,
                    color: Color.fromRGBO(71, 71, 102, 1),
                  ),
                  Padding(padding: EdgeInsets.only(top: 55)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: 600,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 1, 32, 44),
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Masukan Nama Bahan',
                              labelText: 'Nama Bahan',
                              labelStyle: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      Padding(padding: EdgeInsets.only(left: 14)),
                      Container(
                        alignment: Alignment.topLeft,
                        width: 150,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 1, 32, 44),
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Berat Londrian',
                              labelText: 'Berat',
                              labelStyle: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 35)),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewOrder()));
                      },
                      child: Container(
                        child: Image.asset(
                          "images/icon_next.png",
                          width: 52,
                          height: 52,
                        ),
                      ),
                    );
                  }),
                ])),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}

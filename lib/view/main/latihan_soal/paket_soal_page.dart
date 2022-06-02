import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../R/r.dart';

class PaketSoalPage extends StatefulWidget {
  const PaketSoalPage({Key? key}) : super(key: key);
  static String route = "paket_soal_page";

  @override
  State<PaketSoalPage> createState() => _PaketSoalPageState();
}

class _PaketSoalPageState extends State<PaketSoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.grey,
      appBar: AppBar(
        title: Text(
          "Paket Soal",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pilih Paket Soal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                children: [
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PaketSoalWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      // margin: EdgeInsets.all(13),
      padding: EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.withOpacity(0.2),
            ),
            padding: EdgeInsets.all(12),
            child: Image.asset(
              R.assets.icNote,
              width: 14,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Aljabar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "070 Paket Soal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 9,
              color: R.colors.greySubtitle,
            ),
          ),
        ],
      ),
    );
  }
}

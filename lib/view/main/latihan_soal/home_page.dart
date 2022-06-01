import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latsol_akhir/R/r.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama User",
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Selamat Datang",
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            // fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    R.assets.imgUser,
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
            ),
            Container(
              height: 147,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
                //vertical: 15.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 15.0,
              ),
              decoration: BoxDecoration(
                color: R.colors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Text(
                      "Mau Kerjain Soal apa hari ini ?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      R.assets.imgHome,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 21),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Pembelajaran"),
                      TextButton(onPressed: () {}, child: Text("Lihat Semua")),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 21),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 21),
                    child: Row(
                      children: [
                        Container(
                          height: 53,
                          width: 53,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: R.colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(R.assets.icAtom),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Text("Matematika"),
                            Text("0/50 Paket Latihan Soal "),
                            Stack(
                              children: [
                                Container(
                                  height: 19,
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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

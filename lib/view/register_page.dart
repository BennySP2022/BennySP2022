import 'package:flutter/material.dart';
import 'package:latsol_akhir/view/login_page.dart';
import 'package:latsol_akhir/view/main_page.dart';
import '../R/r.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static String route = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { lakiLaki, perempuan }

class _RegisterPageState extends State<RegisterPage> {
  String gender = "Laki-Laki";
  List<String> classSlta = ["10", "11", "12"];
  String selectedClass = "10";

  final emailController = TextEditingController();

  OnTapGender(Gender genderInput) {
    if (genderInput == Gender.lakiLaki) {
      gender = "Laki-Laki";
    } else {
      gender = "Perempuan";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff0f3f5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 25),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Yuk isi Data diri kalian",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: BunttonLogin(
            onTap: () {
              print(emailController);
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(MainPage.route, (context) => false);
            },
            backgroundColor: R.colors.primary,
            borderColor: R.colors.primary,
            child: Text(
              R.strings.daftar,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterTextField(title: "Nama Lengkap", hintitle: "Nama Anda"),
              RegisterTextField(
                  controller: emailController,
                  title: "Email",
                  hintitle: "Email Anda"),
              Text(
                "Jenis Kelamin",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: gender == "Laki-Laki"
                              ? R.colors.primary
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                color: R.colors.greyBorder,
                                width: 1,
                              )),
                        ),
                        onPressed: () {
                          OnTapGender(Gender.lakiLaki);
                        },
                        child: Text(
                          "Laki Laki",
                          style: TextStyle(
                              color: gender == "Laki-Laki"
                                  ? Colors.white
                                  : Color(0xff282828),
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: gender == "Perempuan"
                              ? R.colors.primary
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: R.colors.greyBorder,
                              width: 1,
                            ),
                          ),
                        ),
                        onPressed: () {
                          OnTapGender(Gender.perempuan);
                        },
                        child: Text(
                          "Perempuan",
                          style: TextStyle(
                              color: gender == "Perempuan"
                                  ? Colors.white
                                  : Color(0xff282828),
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Kelas",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: R.colors.greyBorder),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedClass,
                    items: classSlta
                        .map((e) => DropdownMenuItem<String>(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (String? val) {
                      selectedClass = val!;
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              RegisterTextField(title: "Sekolah Anda", hintitle: "Sekolah"),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required String this.title,
    required String this.hintitle,
    this.controller,
  }) : super(key: key);
  final String title;
  final String hintitle;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: R.colors.greyBorder),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintitle,
              hintStyle: TextStyle(
                color: R.colors.greyHintText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

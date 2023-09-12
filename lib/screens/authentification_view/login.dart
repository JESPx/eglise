import 'package:bethanie/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenConnexion extends StatefulWidget {
  const ScreenConnexion({super.key});

  @override
  State<ScreenConnexion> createState() => _ScreenConnexionState();
}

class _ScreenConnexionState extends State<ScreenConnexion> {
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 350,
            height: getProportionateScreenWidth(550),
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Connectez vous a votre compte",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(16),
                        ),
                      ),
                    ],
                  ),
                ),
                ///////////////////////////////
                SizedBox(
                  height: getProportionateScreenWidth(50),
                ),
                ///////////////////////////////
                Form(
                  child: Column(
                    children: [
                      /////////////////////email textformfield
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(330),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(19),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              )
                            ],
                            color: Colors.white),
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Email',
                            hintStyle: GoogleFonts.poppins(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      //////////////////////////////////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(30),
                      ),
                      ////////////////////mot de passe textformfield
                      Container(
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(330),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(19),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              )
                            ],
                            color: Colors.white),
                        child: TextFormField(
                          obscureText: _obscure,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mot de Passe',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscure = !_obscure;
                                });
                              },
                              child: _obscure
                                  ? const Icon(IconlyBroken.show)
                                  : const Icon(IconlyBroken.hide),
                            ),
                            hintStyle: GoogleFonts.poppins(),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      //////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      //////////////////////mot de passe oublié
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Mot de passe oublié ?',
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      //////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      ////////////////////Bouton
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade800,
                          elevation: 3,
                          enableFeedback: true,
                          fixedSize: Size(
                            getProportionateScreenWidth(300),
                            getProportionateScreenWidth(50),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Se Connecter",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      //////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      ////////////////////or
                      Text(
                        '-- Ou avec --',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      //////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      ////////////////////or
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ////////////////Google IconButton
                          IconButton(
                            style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                            onPressed: () {},
                            icon: Container(
                              height: getProportionateScreenWidth(60),
                              width: getProportionateScreenWidth(90),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        offset: Offset(0, 4)),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: SvgPicture.asset(
                                  'assets/logo/google.svg',
                                  height: getProportionateScreenWidth(2),
                                  width: getProportionateScreenWidth(2),
                                ),
                              ),
                            ),
                          ),
                          ////////////////Apple IconButton
                          IconButton(
                            style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                            onPressed: () {},
                            icon: Container(
                              height: getProportionateScreenWidth(60),
                              width: getProportionateScreenWidth(90),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        offset: Offset(0, 4)),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: SvgPicture.asset(
                                  'assets/logo/apple.svg',
                                  height: getProportionateScreenWidth(2),
                                  width: getProportionateScreenWidth(2),
                                ),
                              ),
                            ),
                          ),
                          ////////////////Facebook IconButton
                          IconButton(
                            style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                            onPressed: () {},
                            icon: Container(
                              height: getProportionateScreenWidth(60),
                              width: getProportionateScreenWidth(90),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        offset: Offset(0, 4)),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: SvgPicture.asset(
                                  'assets/logo/facebook.svg',
                                  height: getProportionateScreenWidth(2),
                                  width: getProportionateScreenWidth(2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //////////////////////
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      ////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Vous n\'avez pas de compte',
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'S\'inscrire',
                              style: GoogleFonts.poppins(
                                color: Colors.blue.shade700,
                                fontSize: getProportionateScreenWidth(14),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bethanie/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenInscription extends StatefulWidget {
  const ScreenInscription({super.key});

  @override
  State<ScreenInscription> createState() => _ScreenInscriptionState();
}

class _ScreenInscriptionState extends State<ScreenInscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: getProportionateScreenWidth(50)),
          child: Center(
            child: Container(
              width: 350,
              height: getProportionateScreenWidth(640),
              color: Colors.white,
              child: Column(
                children: [
                  /////////Texte haut de page
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Créez un compte",
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
                  //////////////////////////////
                  Form(
                    child: Column(
                      children: [
                        /////////////////////Nom textformfield
                        const FieldNameEmail(
                          fieldhint: 'Nom complet',
                          kbType: TextInputType.name,
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(30),
                        ),
                        /////////////////////email textformfield
                        const FieldNameEmail(
                          fieldhint: 'Email',
                          kbType: TextInputType.emailAddress,
                        ),
                        //////////////////////////////////////////////////
                        SizedBox(
                          height: getProportionateScreenWidth(30),
                        ),
                        ////////////////////mot de passe textformfield
                        const FieldPassword(
                          texthint: 'Mot de passe',
                        ),
                        //////////////////////
                        SizedBox(
                          height: getProportionateScreenWidth(20),
                        ),
                        //////////////////////mot de passe
                        const FieldPassword(texthint: 'Confirmée Mot de passe'),
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
                            SocialButton(
                              svglogo: 'assets/logo/google.svg',
                              press: () {},
                            ),
                            ////////////////Apple IconButton
                            SocialButton(
                              svglogo: 'assets/logo/apple.svg',
                              press: () {},
                            ),
                            ////////////////Facebook IconButton
                            SocialButton(
                              svglogo: 'assets/logo/facebook.svg',
                              press: () {},
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
                              'Vous avez déja un compte',
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ScreenInscription(),
                                  ),
                                );
                              },
                              child: Text(
                                'Se connecter',
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
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final void Function()? press;
  final String svglogo;
  const SocialButton({
    super.key,
    this.press,
    required this.svglogo,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(shape: const RoundedRectangleBorder()),
      onPressed: press,
      icon: Container(
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 5, offset: Offset(0, 4)),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SvgPicture.asset(
            svglogo,
            height: getProportionateScreenWidth(2),
            width: getProportionateScreenWidth(2),
          ),
        ),
      ),
    );
  }
}

class FieldNameEmail extends StatelessWidget {
  final String fieldhint;
  final TextInputType kbType;
  const FieldNameEmail({
    super.key,
    required this.fieldhint,
    required this.kbType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        decoration: InputDecoration.collapsed(
          hintText: fieldhint,
          hintStyle: GoogleFonts.poppins(),
        ),
        keyboardType: kbType,
        style: GoogleFonts.poppins(
            color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class FieldPassword extends StatefulWidget {
  final String? texthint;
  const FieldPassword({Key? key, required this.texthint}) : super(key: key);

  @override
  _FieldPasswordState createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        color: Colors.white,
      ),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.texthint,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscure = !obscure;
              });
            },
            child: obscure
                ? const Icon(IconlyBroken.show)
                : const Icon(IconlyBroken.hide),
          ),
          hintStyle: GoogleFonts.poppins(),
        ),
        keyboardType: TextInputType.visiblePassword,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

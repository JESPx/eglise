import 'package:bethanie/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Text(
                  "Mot de passe oublié",
                  style: GoogleFonts.poppins(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Entrez l'adresse mail et nous vous enverons \nle liens pour recuperer votre compte",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenWidth(80)),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Form(
            child: Container(
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
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) => email = newValue,
                onChanged: (value) {
                  // if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  //   setState(() {
                  //     errors.remove(kEmailNullError);
                  //   });
                  // } else if (emailValidatorRegExp.hasMatch(value) &&
                  //     errors.contains(kInvalidEmailError)) {
                  //   setState(() {
                  //     errors.remove(kInvalidEmailError);
                  //   });
                  // }
                  return null;
                },
                // validator: (value) {
                //   if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                //     setState(() {
                //       errors.add(kEmailNullError);
                //     });
                //   } else if (!emailValidatorRegExp.hasMatch(value) &&
                //       !errors.contains(kInvalidEmailError)) {
                //     setState(() {
                //       errors.add(kInvalidEmailError);
                //     });
                //   }
                //   return null;
                // },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.poppins(),
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          // FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
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
              "Continue",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          // NoAccountText(),
        ],
      ),
    );
  }
}

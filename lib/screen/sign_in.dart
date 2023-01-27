
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sayurbox/screen/kode_otp.dart';
import 'package:sayurbox/theme.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Widget header() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [Text('Silahkan Masuk',style: greenystyle.copyWith(
          fontSize: 24
        ),)]),
      ),
    );
  }

  Widget nohpInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(left: 5,right: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Nomor HP',
          style: greenystyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
             border: Border.all(
        color: greencolor,
        width: 2,
      ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              ikonphone,
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                style: secondystyle,
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                    hintText: 'Masukkan Nomor handphone', hintStyle: secondystyle),
              ),
              ),
            ],
          )
          ),
        ),
          const SizedBox(height: 12,
          ),
        Text(' *Masukkan Minimal 10 angka',style: redystyle.copyWith(fontSize: 12),)
      ]
      ),
    );
  }


  Widget logFborGoogle(){

    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 30),
      child: Column(
        children: [
          Text(
            'Atau masuk dengan ',
            style: greenystyle.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SocialLoginButton(
                text: 'Facebook',
                buttonType: SocialLoginButtonType.facebook,
                onPressed: () {},
                height: 40,
                mode: SocialLoginButtonMode.single,
              ),

              SizedBox(width: 20,),

              SocialLoginButton(
                text: 'Google',
                buttonType: SocialLoginButtonType.google,
                onPressed: () {},
                height: 40,
                mode: SocialLoginButtonMode.single,
              ),
            ],
          ),
        ],
      ),

    );
  }

  Widget footer() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum punya akun ? ',
            style: secondystyle.copyWith(
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Daftar',
              style: greenystyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin:  const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => KodeOtp()));

          },
          style: TextButton.styleFrom(
            backgroundColor: greencolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Lanjutkan',
            style: primarystyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/image-sayur.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Positioned(
            top: 250.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Card(

              elevation: 0.0,
              color: primarycolor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40.0,),
                    topLeft: Radius.circular(40.0)),

              ),

              child: ListView(
                children: [
                  header(),nohpInput(),signInButton(),logFborGoogle(),footer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

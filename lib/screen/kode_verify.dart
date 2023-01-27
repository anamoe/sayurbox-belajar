import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sayurbox/bottom_nav/home.dart';
import 'package:sayurbox/screen/lupa_password.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../theme.dart';

class KodeVerify extends StatelessWidget {
  const KodeVerify({Key? key}) : super(key: key);

  Widget header() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20,left: 5,right: 5),
        child: Column(
            children: [
          Text('Masukkan Kode Verfikasi',style: greenystyle.copyWith(
            fontSize: 24
        ),
          ),
              SizedBox(height: 12,),
              Text('Silahkan buka email / pesan pada handphone anda. Masukkan kode verifikasi yang telah diberikan. Jangan berikan kode verifikasi kepada siapapun',style: redstyle.copyWith(
                  fontSize: 12,
              ),textAlign: TextAlign.center,
              ),
        ]
        ),
      ),
    );
  }

  Widget nohpInput() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(left: 5,right: 5),
      child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 50,
          width: 50,
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
                  Expanded(
                    child: TextFormField(
                      style: secondystyle,
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly

                      ],

                    ),
                  ),
                ],
              )
          ),
        ),
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
      margin: const EdgeInsets.only(bottom: 10, top: 10),
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
        padding: const EdgeInsets.only(right: 10,left: 10),
        margin:  const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

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
    Widget lupaPassword() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30, top: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LupaPassword()));
              },
              child: Text(
                'Lupa Password',
                style: redstyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          ],
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
                  header(),nohpInput(),signInButton(),logFborGoogle(),footer(),lupaPassword()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

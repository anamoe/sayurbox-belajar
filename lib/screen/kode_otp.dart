import 'package:flutter/material.dart';
import 'package:sayurbox/screen/kode_verify.dart';
import '../theme.dart';

class KodeOtp extends StatelessWidget {
  const KodeOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget conten(){
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children:  [
            const Text('Pilih salah satu metode verifikasi untuk dikirimkan ke'),
            const Text('+6217982719const 827'),
           const SizedBox(height: 12,),
           Container(
             margin: const EdgeInsets.all(16),
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black54,width: 1)
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.chat,size: 30,),
                    Column(
                     children:  [
                       Text('Melalui pesan SMS',style: secondystyle.copyWith(fontWeight: bold),), SizedBox(height: 10,),
                       Text('+6217982719827'),
                     ],
                    ),
                    const Icon(Icons.keyboard_arrow_right,size: 30,),
                  ],
                ),
           ),
            const Text('Atau dengan'),
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.whatsapp,size: 30,),
                  Column(
                    children:  [
                      Text('Melalui pesan Whatsapp',style: secondystyle.copyWith(fontWeight: bold)), SizedBox(height: 10,),
                      const Text('+6217982719827'),
                    ],
                  ),
                  const Icon(Icons.keyboard_arrow_right,size: 30,),
                ],
              ),
            ),

            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(right: 12,left: 12),
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>KodeVerify()));
              },
                  style: TextButton.styleFrom(
                    backgroundColor: greencolor
                  ),
                  child: Text('Kirim kode',style: secondystyle.copyWith(fontWeight: medium),)),
            )

          ],

        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: greencolor,
          centerTitle: false,
          title: Row(children: [
            GestureDetector(
              child: const Icon(
                Icons.chevron_left,color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kode Verifikasi',
                  style:
                      secondystyle.copyWith(fontWeight: medium, fontSize: 20),
                )
              ],
            )
          ]),
        ),
      ),
      body: Center(child: conten()),
    );


  }
}

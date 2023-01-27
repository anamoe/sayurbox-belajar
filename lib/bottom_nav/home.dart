

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sayurbox/bottom_nav/akun.dart';
import 'package:sayurbox/bottom_nav/beranda.dart';
import 'package:sayurbox/bottom_nav/kategori.dart';
import 'package:sayurbox/bottom_nav/pesanan.dart';
import 'package:sayurbox/theme.dart';

import '../provider/page_provider.dart';

class Home extends StatelessWidget {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    PageProvider pageProvider = Provider.of<PageProvider>(context);
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: greencolor,
        child: Icon(Icons.percent),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: pageProvider.currentIndex,
              onTap: (value) {
                pageProvider.currentIndex = value;
              },
              backgroundColor: greencolor,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Icon(
                      Icons.home,

                      color: pageProvider.currentIndex  == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Icon(
                      Icons.category,

                      color: pageProvider.currentIndex  == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Icon(
                      Icons.sticky_note_2_rounded,
                      color: pageProvider.currentIndex  == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Icon(
                      Icons.account_box,
                      color: pageProvider.currentIndex  == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
              ]),
        ),
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex ) {
        case 0:
          return Beranda();
        case 1:
          return Kategori();
        case 2:
          return Pesanan();
        case 3:
          return Akun();
        default:
          return Beranda();
      }
    }

    return Scaffold(
      //  backgroundColor: pageProvider.currentIndex  == 0 ? colorbutton :colorbutton2,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),


      body: body(),
    );
  }
}
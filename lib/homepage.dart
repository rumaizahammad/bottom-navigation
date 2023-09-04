import 'package:flutter/material.dart';
import 'package:flutter_trial/firstpage.dart';
import 'package:flutter_trial/secondpage.dart';
import 'package:flutter_trial/thirdpage.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  List screen = [FirstPage(), SecondPage(), ThirdPage()];
  ValueNotifier notifar = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifar,
        builder: (context, value, _) {
          return Scaffold(
            appBar: AppBar(
              actions: [Icon(Icons.browse_gallery),Icon(Icons.settings)],

              backgroundColor: Color.fromARGB(137, 58, 234, 48),
              title: Text( 'Whatsapp', style: TextStyle(color: Colors.black),),
            ),
            body: screen[value],
            bottomNavigationBar: BottomNavigationBar(
              // showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Color.fromARGB(255, 226, 9, 9),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: 'Chats',
                    backgroundColor: Color.fromARGB(221, 22, 212, 79)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call),
                    label: 'Calls',
                    backgroundColor: Colors.black87),
                BottomNavigationBarItem(
                  icon: Icon(Icons.query_stats_outlined),
                  label: 'Status   ',
                  backgroundColor: Colors.black87,
                )
              ],
              currentIndex: notifar.value,
              onTap: (value) {
                notifar.value = value;
              },
            ),
          );
        });
  }
}
import 'package:flutter/material.dart';
import 'package:language_app/components/category_item.dart';
import 'package:language_app/screens/colors_page.dart';
import 'package:language_app/screens/family_members_page.dart';
import 'package:language_app/screens/numbers_page.dart';
import 'package:language_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
  title: const Text('Language App',style: TextStyle(fontSize: 40),),
  backgroundColor: const Color(0xff46322B),
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(70.0),
    child: Container(), // Add any additional widgets here
  ),
),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () 
            {
                 Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return const FamilyMembersPage();
              }));
            },
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
          ),
          Category(
            onTap: ()
            {
              
                 Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
            onTap: ()
            {
              
                 Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}

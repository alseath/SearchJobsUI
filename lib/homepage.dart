import 'package:flutter/material.dart';

import 'util/jobcard.dart';
import 'util/recentjobcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List JobsForYou = [
    ['Uber', 'UI/UX Designer', 'lib/icons/uber.png', 3.520, true],
    ['Google', 'Desenvolvedor Web', 'lib/icons/google.png', 4.000, false],
    ['Nike', 'Analista de Sistemas', 'lib/icons/nike.png', 6.000, false],
    ['Apple', 'Engenheiro de Software', 'lib/icons/apple.png', 8.500, false],
  ];
  final List RecentAdded = [
    ['Google', 'Analista de Sistemas', 'lib/icons/google.png', 5.000],
    ['Nike', 'Engenheiro de Software', 'lib/icons/nike.png', 9.000],
    ['Apple', 'Desenvolvedor Web', 'lib/icons/apple.png', 4.500],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          //Appbar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset('lib/icons/menu-from-left.png'),
            ),
          ),

          SizedBox(height: 15),

          //Título
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Descubra novas oportunidades',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(height: 15),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Procure por um emprego...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'lib/icons/preferences.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          // for you
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Para você',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Container(
            height: 160,
            child: ListView.builder(
                itemCount: JobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (content, index) {
                  return JobCard(
                      companyName: JobsForYou[index][0],
                      jobTitle: JobsForYou[index][1],
                      logoImagePath: JobsForYou[index][2],
                      hourlyRate: JobsForYou[index][3],
                      darkMode: JobsForYou[index][4]
                  );
                }),
          ),

          SizedBox(
            height: 25,
          ),

          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Adicionados recentemente',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                    itemCount: RecentAdded.length,
                    itemBuilder: (context, index) {
                      return RecentJobCard(
                        companyName: RecentAdded[index][0],
                        jobTitle: RecentAdded[index][1],
                        logoImagePath: RecentAdded[index][2],
                        hourlyRate: RecentAdded[index][3],
                      );
                    }),
              )),
        ],
      )
    );
  }
}

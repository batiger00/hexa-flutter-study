import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class Subject {
  String title;
  String time;
  Subject(this.title, this.time);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Timer_home(),
    );
  }
}

class Timer_home extends StatefulWidget {
  const Timer_home({Key? key}) : super(key: key);

  @override
  State<Timer_home> createState() => _Timer_homeState();
}

class _Timer_homeState extends State<Timer_home> {
  int selectedindex = 2;
  @override
  void bottomIndex(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(252, 105, 25, 1),
        title: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.date_range), Text(' 6. 28. (화)')],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('D-day'))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                margin: EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '박지호',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'batiger00@gmail.com',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 86, 83, 83),
                                      height: 1.5,
                                      fontSize: 12.5),
                                ),
                              ]),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 81, 78, 78),
                            ),
                          ),
                        ]),
                    GestureDetector(
                      onTap: () {
                        print('check');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        padding: EdgeInsets.fromLTRB(10, 6, 90, 7),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 163, 162, 162)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          '상태메시지를 입력해 주세요.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 163, 162, 162),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            ListTile(
              tileColor: Color.fromARGB(255, 243, 242, 242),
              leading: Icon(Icons.local_fire_department, color: Colors.red),
              title: const Text('열품타 스토어'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.mood),
              title: const Text('스터디콘 설정'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              title: const Text('공지사항'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: const Text('허용앱 설정'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: const Text('도움말'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: const Text('친구초대'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble),
              title: const Text('커뮤니티'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: MyHome(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomIndex,
        currentIndex: selectedindex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined_outlined), label: '통계'),
          BottomNavigationBarItem(
              icon: Icon(Icons.developer_board), label: '플래너'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: '그룹'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_sharp), label: '랭킹')
        ],
      ),
      backgroundColor: Color.fromRGBO(252, 105, 25, 1),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Text(
          '01 : 39 : 30',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
        ),
        margin: EdgeInsets.all(50),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.play_circle,
                  size: 40,
                ),
                onTap: () {},
                title: Text(
                  '독서',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: Icon(Icons.play_circle, size: 40),
                onTap: () {},
                title: Text(
                  '플러터',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: Icon(Icons.play_circle, size: 40),
                onTap: () {},
                title: Text(
                  '수학',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              ListTile(
                leading: Icon(Icons.play_circle, size: 40),
                onTap: () {},
                title: Text(
                  '컴퓨터 시스템',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}

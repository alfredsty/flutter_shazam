import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shazam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Builder(builder: (context) {
        DefaultTabController.of(context)?.addListener(() {
          setState(() {});
        });

        return Scaffold(
          body: Stack(
            children: [
              TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: TabPageSelector(
                          color: DefaultTabController.of(context)?.index == 1
                              ? Colors.blue[300]
                              : Colors.grey[400],
                          selectedColor:
                              DefaultTabController.of(context)?.index == 1
                                  ? Colors.white
                                  : Colors.blue,
                          indicatorSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// 첫번째 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
    ];

    return SafeArea(
      child: Container(),
    );
  }
}

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[200]!, Colors.blue[800]!],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context)!.animateTo(0);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          '라이브러리',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context)!.animateTo(2);
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.show_chart,
                          color: Colors.white,
                        ),
                        Text(
                          '차트',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              'Shazam하려면 탭하세요',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[300],
              ),
              child: Image.network(
                "https://i.ibb.co/hxNbZ8p/shazam.png",
                color: Colors.white,
                width: 130,
                height: 130,
              ),
            ),
            SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'global': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'newyork': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
    };

    return SafeArea(
      child: Column(
        children: [
          Text(
            '차트',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.purple[900],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 350,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              '국가 및 도시별 차트',
                              style: TextStyle(
                                color: Colors.purple[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '전 세계',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('대한민국 차트'),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['korea']!.map(
                          (song) {
                            // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                            String imageUrl = song['imageUrl']!;
                            String name = song['name']!;
                            String artist = song['artist']!;

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    imageUrl,
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                  ),
                                  Text(
                                    name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(artist),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('글로벌 차트'),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['global']!.map(
                          (song) {
                            // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                            String imageUrl = song['imageUrl']!;
                            String name = song['name']!;
                            String artist = song['artist']!;

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    imageUrl,
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                  ),
                                  Text(
                                    name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(artist),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 8,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('뉴욕 차트'),
                          Spacer(),
                          Text(
                            '모두 보기',
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ...chartData['newyork']!.map(
                          (song) {
                            // 스프레드 연산자: 리스트 등의 이터러블 안에 있는 요소를 분해한다.
                            String imageUrl = song['imageUrl']!;
                            String name = song['name']!;
                            String artist = song['artist']!;

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    imageUrl,
                                    width: MediaQuery.of(context).size.width *
                                        0.29,
                                  ),
                                  Text(
                                    name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(artist),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

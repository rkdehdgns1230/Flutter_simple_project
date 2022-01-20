import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // column들은 왜 필요할까?
      // class와 widget의 관계를 알면 알 수 있다.
      title: 'KKANG',
      home: Grade(), // custom widget Grade
      debugShowCheckedModeBanner: false,
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100], // body의 색상 변경
      appBar: AppBar(
        title: Text('KKANG'),
        backgroundColor: Colors.amber[400],
        centerTitle: true, // 가운데 정렬
        elevation: 0.0, // app bar 띄우는 효과 없애기
        
      ),
      body: Padding(
        // 캐릭터 정보의 알맞은 출력을 위해 padding 값을 부여해준다.
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          // crossAxisAlignment를 설정해서 가로로 시작점 정렬을 해준다.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/giphy.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,// 선의 두께
              endIndent: 30.0, // 끝에서 얼마나 떨어지는지
            ),
            Text('Name',
              style: TextStyle(
                color: Colors.black,  // 글자 색상
                letterSpacing: 2.0,   // 철자 간격
              ), // style argument
            ),
            SizedBox(
              height: 10.0, // box의 높이 설정 (text간 간격을 위함)
            ),
            Text('KANG',
              style: TextStyle(
                color: Colors.black,  // 글자 색상
                letterSpacing: 2.0,   // 철자 간격
                fontSize: 28.0,       // 글씨 크기
                fontWeight: FontWeight.bold, // 글씨 굵기
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('KANG POWER LEVEL',
              style: TextStyle(
                color: Colors.black,  // 글자 색상
                letterSpacing: 2.0,   // 철자 간격
              ), // style argument
            ),
            SizedBox(
              height: 10.0, // box의 높이 설정 (text간 간격을 위함)
            ),
            Text('150',
              style: TextStyle(
                color: Colors.black,  // 글자 색상
                letterSpacing: 2.0,   // 철자 간격
                fontSize: 28.0,       // 글씨 크기
                fontWeight: FontWeight.bold, // 글씨 굵기
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize:  16.0,
                  letterSpacing: 1.0,
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('face hero tattoo',
                style: TextStyle(
                  fontSize:  16.0,
                  letterSpacing: 1.0,
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                style: TextStyle(
                  fontSize:  16.0,
                  letterSpacing: 1.0,
                )),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/투게더.jpg'),
                radius: 40.0,
                backgroundColor: Colors.amber[400],
              ),
            ),
          ],
          )
      )
    );
  }
}
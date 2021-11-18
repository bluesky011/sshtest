import 'package:flutter/material.dart';
import 'dart:math' as math;

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("填充"),
        ),


      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Hello world"),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("I am Jack"),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );

  }
}


class ConstrainedBoxTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
    );

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("尺寸限制类容器"),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          )

        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50.0
            ),

            child: Container(
              height: 5.0,
              child: redBox,
            ),
          ),

          SizedBox(
            width: 80.0,
            height: 80.0,
            child: redBox,
          ),

          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 80.0,height: 80.0),
            child: redBox,
          ),


          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0,minHeight: 20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0,minHeight: 60.0),
              child: redBox,
            ),
          ),


          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0,minHeight: 100.0),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0,minHeight: 20.0),
                child: redBox,
              ),
            ),
          )
        ],
      ),


    );

  }
}


class DecoratedBoxTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("装饰容器"),
      ),


      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, (Colors.orange[700])!]),
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                  )
                ]
              ),

              child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
                child: Text("Login",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );

  }
}


class TransformBoxTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("变换"),
      ),


      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: new Transform(
                alignment: Alignment.topRight,
                transform: new Matrix4.skewY(0.3),
                child: new Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),


            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.translate(
                offset: Offset(-20.0,-5.0),
                child: Text("Hello world"),
              ),
            ),
            
            
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi/2,
                child: Text("Hello world"),
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(
                  scale: 1.5,
                  child: Text("Hello world"),
                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Text("Hello world"),
                  ),
                ),
                
                Text("你好",style: TextStyle(color: Colors.green,fontSize: 18.0),)
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text("Hello world"),
                  ),
                ),

                Text("你好",style: TextStyle(color: Colors.green,fontSize: 18.0),)
              ],
            )
          ],
        ),
      ),
    );

  }
}


class ContainerBoxTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Container"),
      ),


      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 120.0),
              constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.red,Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                  )
                ]
              ),

              transform: Matrix4.rotationZ(.2),
              alignment: Alignment.center,
              child: Text(
                "5.20",style: TextStyle(color: Colors.white,fontSize: 40.0),
              ),
            ),
            
            
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text("Hello world!"),
            ),


            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.orange,
              child: Text("Hello world!"),
            )
          ],
        ),
      ),
    );

  }
}


class ScaffoldBoxTestRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldBoxTestRoute> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  TabController? _tabController;
  List tabs = ["新闻","历史","图片"];

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("App Name"),

        leading: Builder(builder: (context){
          return IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.dashboard,color: Colors.white),
          );
        }),

        // actions: <Widget>[
        //   IconButton(onPressed: (){}, icon: Icon(Icons.share)),
        // ],

        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),


      drawer: new Drawer(),

      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e){
          return Container(
            alignment: Alignment.center,
            child: Text(e,textScaleFactor: 5),
          );
        }).toList(),
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business),title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school),title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),

      // body: Padding(
      //   padding: EdgeInsets.all(16.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       DecoratedBox(
      //         decoration: BoxDecoration(
      //             gradient: LinearGradient(colors: [Colors.red, (Colors.orange[700])!]),
      //             borderRadius: BorderRadius.circular(3.0),
      //             boxShadow: [
      //               BoxShadow(
      //                   color: Colors.black54,
      //                   offset: Offset(2.0,2.0),
      //                   blurRadius: 4.0
      //               )
      //             ]
      //         ),
      //
      //         child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
      //           child: Text("Login",style: TextStyle(color: Colors.white),),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );

  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd(){

  }
}


class ClipBoxTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget avatar = Image.asset("imgs/avatar.png",width: 60.0);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("剪裁"),
      ),


      body: Center(
        child: Column(
          children: <Widget>[
            avatar,
            ClipOval(child: avatar),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: avatar,
                ),

                Text("你好世界",style: TextStyle(color: Colors.green),)
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar,
                  ),
                ),

                Text("你好世界",style: TextStyle(color: Colors.green))
              ],
            ),


            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              child: ClipRect(
                clipper: MyClipper(),
                child: avatar,
              ),
            )
          ],
        ),
      ),


      // body: Padding(
      //   padding: EdgeInsets.all(16.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       DecoratedBox(
      //         decoration: BoxDecoration(
      //             gradient: LinearGradient(colors: [Colors.red, (Colors.orange[700])!]),
      //             borderRadius: BorderRadius.circular(3.0),
      //             boxShadow: [
      //               BoxShadow(
      //                   color: Colors.black54,
      //                   offset: Offset(2.0,2.0),
      //                   blurRadius: 4.0
      //               )
      //             ]
      //         ),
      //
      //         child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 18.0),
      //           child: Text("Login",style: TextStyle(color: Colors.white),),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );

  }
}


class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
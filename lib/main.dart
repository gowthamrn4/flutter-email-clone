import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
        primaryColor: const Color(0xffB23121),
        accentColor: const Color(0xffD44638)),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Color(0xffB23121),
          title: Text('Primary 123'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('images/bg.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        backgroundImage: ExactAssetImage('images/1.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        child: Text(
                          'Gowtham rn',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        child: Text(
                          ' gowthamrn4@gmail.com',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              menuTail(title: 'All Inbox', idata: Icons.inbox),
              menuTail(title: 'Stared', idata: Icons.stars),
              menuTail(title: 'Send', idata: Icons.send),
              menuTail(title: 'Recent', idata: Icons.receipt),
              menuTail(title: 'Important', idata: Icons.import_contacts),
              menuTail(title: 'Outbox', idata: Icons.message),
              menuTail(title: 'Drafts', idata: Icons.delete)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffB23121),
          child: Icon(
            Icons.edit,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              topTail(
                  title: 'Social',
                  subtitle: 'Google+',
                  idata: Icons.people,
                  iconcolor: Colors.blue,
                  message: '1 New'),
              Divider(
                height: 0.1,
              ),
              topTail(
                  title: 'Promotion',
                  subtitle: 'Swiggy Google Offers',
                  idata: Icons.more,
                  iconcolor: Colors.green,
                  message: '4 New'),
              Divider(
                height: 0.1,
              ),
              topTail(
                  title: 'Update',
                  subtitle: 'Google Pay',
                  idata: Icons.info,
                  iconcolor: Colors.orange,
                  message: '6 New'),
              Divider(
                height: 0.1,
              ),
              messageTail(
                  url: 'images/1.jpeg',
                  name: 'Gowtham',
                  msg: 'Bring Your Parents too work dat... ',
                  time: '1.45 PM'),
              messageTail(
                  url: 'images/2.jpeg',
                  name: 'Karthi',
                  msg: 'Welcome To our Web Site',
                  time: '1.45 PM'),
              messageTail(
                  url: 'images/3.jpeg',
                  name: 'Rahul',
                  msg: 'Check out the new friend we made ...',
                  time: '2.45 PM'),
              messageTail(
                  url: 'images/4.jpeg',
                  name: 'Gowri',
                  msg: 'Firebase OAuth Activated',
                  time: '6.45 PM'),
              messageTail(
                  url: 'images/4.jpeg',
                  name: 'Gowri',
                  msg: 'You have recived new new message ',
                  time: '12.45 PM'),
              messageTail(
                  url: 'images/3.jpeg',
                  name: 'Deva',
                  msg: 'Password Changed Successfully',
                  time: '11.45 PM'),
              messageTail(
                  url: 'images/2.jpeg',
                  name: 'Gowmari',
                  msg: 'Your password reset successfully',
                  time: '10.45 PM'),
            ],
          ),
        ));
  }
}

ListTile topTail(
    {String title,
    String subtitle,
    IconData idata,
    Color iconcolor,
    String message}) {
  return ListTile(
    leading: Icon(
      idata,
      color: iconcolor,
    ),
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subtitle),
    trailing: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
      child: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.blue,
    ),
  );
}

ListTile messageTail({String url, String name, String msg, String time}) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20.0,
      backgroundImage: ExactAssetImage(url),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text(name), Text(time)],
    ),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text(msg), Icon(Icons.star_border)],
    ),
  );
}

ListTile menuTail({String title, IconData idata}) {
  return ListTile(
    leading: Icon(idata),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title),
        Container(
            color: Color(0xffEEEEE),
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Text(
              '99+',
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    ),
  );
}

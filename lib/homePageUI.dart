import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageInstagram extends StatefulWidget {
  @override
  _HomePageInstagramState createState() => _HomePageInstagramState();
}

class _HomePageInstagramState extends State<HomePageInstagram> {
  int likes = 2709;
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 300,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, left: 6.0),
          child: Container(
            height: 200,

            // color: Colors.grey,
            child: Image.network(
              'https://www.instagram.com/static/images/web/mobile_nav_type_logo-2x.png/1b47f9d0e595.png',
              //  fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 102,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 31,
                                  backgroundImage: NetworkImage(
                                      'https://i.ibb.co/P5BHnq6/a1471336261-10.jpg'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Your Story',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 48,
                              left: 55,
                              child: Icon(
                                Icons.add_circle_outlined,
                                color: Colors.blue,
                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 8),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 34,
                                  backgroundColor: Colors.pink,
                                  child: CircleAvatar(
                                    radius: 31,
                                    backgroundImage: NetworkImage(
                                        'https://i.ibb.co/q7JXX9Q/d70fc4bd44954b993c58317d28f92ac5.png'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    'Manthan Jani',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    height: 55,
                    //  color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    //   margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://i.ibb.co/P5BHnq6/a1471336261-10.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'filtercopy',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0, top: 8),
                            child: Icon(
                              Icons.more_vert,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      likes = likes + 1;
                      a = !a;
                    });
                    print(likes);
                    print(a);
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.grey,
                      child: Image(
                          image: NetworkImage(
                              'https://i.ibb.co/P5BHnq6/a1471336261-10.jpg'))),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: <Widget>[
                        a == false
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    likes = likes - 1;
                                    a = !a;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                  size: 28,
                                ),
                              )
                            : Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.black,
                                size: 28,
                              ),
                        SizedBox(
                          width: 22.0,
                        ),
                        Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.black,
                          size: 28,
                        ),
                        SizedBox(
                          width: 22.0,
                        ),
                        Icon(
                          FontAwesomeIcons.share,
                          color: Colors.black,
                          size: 28,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            FontAwesomeIcons.bookmark,
                            color: Colors.black,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 8),
                        child: Text(
                          '${likes.toString()} likes',
                          style: TextStyle(
                              fontSize: 17.8, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 8),
                            child: Text(
                              'filtercopy',
                              style: TextStyle(
                                  fontSize: 17.8, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'Do Like Share Comment',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, left: 8),
                        child: Text(
                          'View all 25 comments',
                          style: TextStyle(
                              fontSize: 17.8,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    height: 55,
                    //  color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    //   margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://i.ibb.co/P5BHnq6/a1471336261-10.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'filtercopy',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0, top: 8),
                            child: Icon(
                              Icons.more_vert,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      likes = likes + 1;
                      a = !a;
                    });
                    print(likes);
                    print(a);
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.grey,
                      child: Image(
                          image: NetworkImage(
                              'https://i.ibb.co/P5BHnq6/a1471336261-10.jpg'))),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: <Widget>[
                        a == false
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    likes = likes - 1;
                                    a = !a;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                  size: 28,
                                ),
                              )
                            : Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.black,
                                size: 28,
                              ),
                        SizedBox(
                          width: 22.0,
                        ),
                        Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.black,
                          size: 28,
                        ),
                        SizedBox(
                          width: 22.0,
                        ),
                        Icon(
                          FontAwesomeIcons.share,
                          color: Colors.black,
                          size: 28,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            FontAwesomeIcons.bookmark,
                            color: Colors.black,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 8),
                        child: Text(
                          '${likes.toString()} likes',
                          style: TextStyle(
                              fontSize: 17.8, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 8),
                            child: Text(
                              'filtercopy',
                              style: TextStyle(
                                  fontSize: 17.8, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 8),
                            child: Text(
                              'Do Like Share Comment',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, left: 8),
                        child: Text(
                          'View all 25 comments',
                          style: TextStyle(
                              fontSize: 17.8,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

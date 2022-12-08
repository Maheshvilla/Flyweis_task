// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:testapp/Providers/home_notifier.dart';
import 'package:testapp/Tabs/academic.dart';
import 'package:testapp/Tabs/all_documents.dart';
import 'package:testapp/Tabs/id_cards.dart';
import 'package:testapp/Tabs/my_bills.dart';
import 'package:testapp/Utilities/Common.dart';
import 'package:testapp/widgets/drawer_widget.dart';

enum Options { search, upload, copy, exit }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
 
  late TabController _tabController;
  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;
  var appBarHeight = AppBar().preferredSize.height;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData) {
    return PopupMenuItem(
      child:  Row(
        children: [
          Icon(iconData, color: Colors.black,),
          Text(title),
        ],
      ),
    );
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      // appBar:_buildAppBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(text: "Logo"),
                ])),
            Icon(
              Icons.logo_dev,
              color: Colors.yellowAccent,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.create_new_folder,
              color: Colors.yellowAccent,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view,
              color: Colors.white,
            ),
          ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
          itemBuilder: (ctx) => [
            _buildPopupMenuItem('  PDF/JPG', Icons.picture_as_pdf),
            _buildPopupMenuItem('  Import', Icons.login_rounded),
            _buildPopupMenuItem('  PDF Tools', Icons.table_rows_outlined),
            _buildPopupMenuItem('  Short by', Icons.logout),
            _buildPopupMenuItem('  Select', Icons.check_box_outlined),
            _buildPopupMenuItem('  Create Folder', Icons.folder_open_outlined),
          ],
        )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CarouselSlider.builder(
                  itemCount: Common().sliders.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 120,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    viewportFraction: 1,
                    reverse: false,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      
                    },
                  ),
                  itemBuilder: (context, i, id) {
                    //for onTap to redirect to another screen
                    return GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                          color: Colors.white,
                        )),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            Common().sliders[i],
                            width: MediaQuery.of(context).size.width * 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      onTap: () {},
                    );
                  },
                ),
           ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: TabBar(
              indicatorColor: Colors.black,

              //  unselectedLabelColor: Colors.ba,
              controller: _tabController,
              tabs: [
                const Tab(
                  // icon: const Icon(Icons.home),
                  text: 'All docs',
                ),
                const Tab(
                  // icon: const Icon(Icons.my_location),
                  text: 'My Bill',
                ),
                const Tab(
                  // icon: const Icon(Icons.my_location),
                  text: 'ID Card',
                ),
                const Tab(
                  // icon: const Icon(Icons.my_location),
                  text: 'Academic Doc',
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                AllDocuments(),
                MyBills(),
                IDCards(),
                Academic()
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide.none,
                ),
              ),
            ),
            child: Text('Create New Folder'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 120,
                //  shape: RoundedRectangleBorder(d
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.pink,
                ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 40,
                          )),
                      IconButton(
                          onPressed: () {
                            imagepickerbottomsheet();
                          },
                          icon: Icon(
                            Icons.image,
                            size: 40,
                          ))
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
  imagepickerbottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5,),
                Text('Upload form',style:TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(left:12.0,right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.image,color:Colors.pink)),
                          Text('Gallery',style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.file_present_outlined,color:Colors.yellow)),
                          Text('File',style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.file_download_outlined,color:Colors.blue)),
                          Text('Cloud',style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.file_present,color:Colors.pink)),
                          Text('Digi Locker',style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                )
                // ListTile(
                //   leading: Icon(Icons.camera),
                //   title: Text('Camera'),
                //   onTap: () {
                //     context.read<HomeNotifier>().getImage(
                //           context,
                //         );
                //     Navigator.of(context).pop();
                //   },
                // ),
                // ListTile(
                //     leading: Icon(Icons.image),
                //     title: Text('Gallery'),
                //     onTap: () {
                //       context.read<HomeNotifier>().getImagegaller(
                //             context,
                //           );
                //       Navigator.of(context).pop();
                //     }),
              ],
            ),
          );
        });
  }
}

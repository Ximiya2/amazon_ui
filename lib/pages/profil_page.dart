import 'package:amazon/pages/rells_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gallery_page.dart';
import 'igtv_page.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade200)
            )
          ),
          child: AppBar(
            elevation: 0,
            centerTitle: false,
            backgroundColor: Colors.white,
            title: Text(
              'amazon.net',
              selectionColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
                actions: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                  ),
                ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/image/photoIlmhub.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'amazon shop',
                          style: TextStyle(color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '29',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '1,627',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Folloowers',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Like',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTabController(
                  length: 3,
                  child: NestedScrollView(
                      headerSliverBuilder: (context, _){
                        return [
                          SliverList(
                              delegate: SliverChildListDelegate([
                                profileHeaderWidget(context),
                              ]))
                        ];
                      },
                      body: Column(
                        children: [
                          Material(
                            color: Colors.white,
                            child: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey[400],
                              indicatorWeight: 1,
                              indicatorColor: Colors.black,
                              tabs: [
                                Tab(
                                    icon:
                                    Icon(Icons.grid_on_sharp, color: Colors.black,)
                                ),
                                Tab(
                                    icon:
                                    Icon(Icons.video_collection, color: Colors.black,)
                                ),
                                Tab(
                                    icon:
                                    Icon(Icons.perm_contact_cal_outlined, color: Colors.black,)
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: TabBarView(
                            children: [
                              Gallery(),
                              Igtv(),
                              Reels(),
                            ],
                          ),
                          ),
                        ],
                      ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  profileHeaderWidget(BuildContext context) {}
}


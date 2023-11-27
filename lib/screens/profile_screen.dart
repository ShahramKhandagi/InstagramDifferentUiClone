import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:dotted_border/dotted_border.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                toolbarHeight: 60,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 18, top: 12),
                    child: Icon(
                      Icons.menu,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(10),
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color(0xff1C1F2E),
                expandedHeight: 140,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/item1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _getHeaderProfile(),
              ),
              SliverToBoxAdapter(
                child: _getBioInfo(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: TabBarViewDelegate(
                  TabBar(
                    indicatorPadding: EdgeInsets.only(bottom: 4),
                    indicatorWeight: 2,
                    labelColor: secondColor,
                    indicatorColor: secondColor,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.post_add_sharp),
                      ),
                      Tab(
                        icon: Icon(Icons.bookmark_outline_rounded),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: TabBarView(children: [
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/item$index.jpg'),
                          ),
                        ),
                      );
                    }), childCount: 10),
                    gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(2, 2),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                        ]),
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/item$index.jpg'),
                          ),
                        ),
                      );
                    }), childCount: 10),
                    gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(2, 2),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                          QuiltedGridTile(1, 1),
                        ]),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget _getBioInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The future is yours to create 💻🃏',
            style:
                TextStyle(color: Colors.white, fontFamily: 'SM', fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.link,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'zil.ink/shahramkhandagi',
                style: TextStyle(
                    color: Colors.blue[300], fontFamily: 'SM', fontSize: 14),
              ),
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'IRAN',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'SM', fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    '10',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SM',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SM',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 26,
              ),
              Row(
                children: [
                  Text(
                    '232',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SM',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SM',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 26,
              ),
              Row(
                children: [
                  Text(
                    '189',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SM',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SM',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Container(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 150,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Message',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          _getStoriesList(),
        ],
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getProfileImageBox(),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 70,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'شهرام خندقی',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SM', fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'shahramkhandagi',
                    style: TextStyle(
                        color: Color(0xffC5C5C5),
                        fontFamily: 'GB',
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.edit_square,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _getProfileImageBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(15),
      padding: EdgeInsets.all(4),
      color: secondColor,
      dashPattern: [400, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 50,
          width: 50,
          child: Image.asset('images/mypro.jpeg'),
        ),
      ),
    );
  }

  Widget _getStoriesList() {
    return Container(
      height: 98,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0 ? _getAddStoryWidget() : _getStoriesListBox(index);
        },
      ),
    );
  }

  Widget _getStoriesListBox(int index) {
    List highName = ["work", "me", "culture"];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset(
                  'images/item${index + 2}.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            highName[index - 1],
            style:
                TextStyle(fontFamily: 'GM', fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _getAddStoryWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.add,
              color: secondColor,
              size: 45,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'New',
          style: TextStyle(fontFamily: 'GM', fontSize: 14, color: Colors.white),
        )
      ],
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);

  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: mainBackgroundColor,
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

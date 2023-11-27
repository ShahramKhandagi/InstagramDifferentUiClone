import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:instagram_different_ui_clone/screens/share_bottomsheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: mainBackgroundColor,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(fontFamily: 'GI', color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.energy_savings_leaf_outlined,
              color: secondColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _getStoriesList(),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                _getHeaderPost(),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: _getPost(context),
                )
              ],
            );
          }, childCount: 4))
        ],
      )),
    );
  }

  Widget _getStoriesList() {
    return Container(
      height: 98,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 0 ? _getAddStoryWidget() : _getStoriesListBox();
        },
      ),
    );
  }

  Widget _getPostsList() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            _getHeaderPost(),
            SizedBox(
              height: 12,
            ),
            _getPost(context),
          ],
        );
      },
    );
  }

  Container _getPost(context) {
    return Container(
      height: 420,
      width: 350,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/mypro.jpeg'),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 20,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 18.0, sigmaX: 18.0),
                child: Container(
                  width: 300,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1.3 K',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.forum_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '266',
                              style: TextStyle(
                                  fontFamily: 'GB',
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: DraggableScrollableSheet(
                                          initialChildSize: 0.5,
                                          minChildSize: 0.2,
                                          maxChildSize: 0.7,
                                          builder: (context, controler) {
                                            return ShareBottomSheet(
                                              controller: controler,
                                            );
                                          },
                                        ),
                                      );
                                    });
                              },
                              child: Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                  fontFamily: 'GB',
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _getHeaderPost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          _getStoryBox(),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'shahramkhandagi',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'شهرام خندقی برنامه نویس اندروید',
                  style: TextStyle(
                    fontFamily: 'SM',
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: secondColor,
          ),
        ],
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: secondColor,
      dashPattern: [40, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/mypro.jpeg'),
        ),
      ),
    );
  }

  Widget _getStoriesListBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(17),
              padding: EdgeInsets.all(4),
              color: secondColor,
              dashPattern: [40, 10],
              strokeWidth: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Container(
                  height: 58,
                  width: 58,
                  child: Image.asset('images/mypro.jpeg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'shahram',
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
          'Your Story',
          style: TextStyle(fontFamily: 'GM', fontSize: 14, color: Colors.white),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:instagram_different_ui_clone/model/enums/activity_type_enum.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: _getAllList(),
    );
  }

  Widget _getAllList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 60),
            child: Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 22, fontFamily: 'GB', color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getMainRow(
                ActivityStatus.likes, 'Likes Your', 'Post', '5min', index);
          }, childCount: 2),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'GB',
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getMainRow(ActivityStatus.newfollow, 'Started Following',
                'You', '17h', index);
          }, childCount: 5),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getMainRow(
                ActivityStatus.likes, 'Likes Your', 'Post', '18h', index);
          }, childCount: 2),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'This Month',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'GB', color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _getMainRow(ActivityStatus.following, 'Started Following',
                'You', '4D', index);
          }, childCount: 5),
        )
      ],
    );
  }

  Widget _getMainRow(ActivityStatus status, String messageText,
      String messageText2, String timeMessage, int index) {
    List likesName = [
      "coffeeland",
      "sina",
      "ramin",
      "shahin",
      "shahram",
      "instagram"
    ];

    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration:
                BoxDecoration(color: secondColor, shape: BoxShape.circle),
          ),
          SizedBox(
            width: 7,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/item$index.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    likesName[index],
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    messageText,
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 10,
                        color: Color(0xffC5C5C5)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    messageText2,
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 10,
                        color: Color(0xffC5C5C5)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    timeMessage,
                    style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          _getNotificationsRow(status)
        ],
      ),
    );
  }

  Widget _getNotificationsRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.newfollow:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(color: Colors.white),
          ),
        );
      case ActivityStatus.likes:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item9.jpg'),
            ),
          ),
        );

      case ActivityStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
      default:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
    }
  }
}

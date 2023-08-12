import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet(this.controller, {super.key});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0.5),
                  Color.fromRGBO(255, 255, 255, 0.2)
                ],
              ),
            ),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return _getBottomSheetDetails();
              },
            ),
          ),
        ));
  }

  Widget _getBottomSheetDetails() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text(
                'Share',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Icon(
                Icons.energy_savings_leaf_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(255, 255, 255, 0.4),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(255, 255, 255, 0.4), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Search...',
              labelStyle: TextStyle(
                fontFamily: 'GM',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        _getContactsGridView()
      ],
    );
  }

  Widget _getContactsGridView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        shrinkWrap: true,
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                width: 65,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('images/mypro.jpeg'),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'shahram',
                style: TextStyle(
                    fontFamily: 'GM', fontSize: 14, color: Colors.white),
              ),
            ],
          );
        },
      ),
    );
  }
}

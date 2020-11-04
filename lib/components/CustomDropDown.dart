import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String text;

  const CustomDropdown({Key key, @required this.text}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  bool isDropdownOpened = false;
  OverlayEntry floatingDropdown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  void findDropdownData() {
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return GestureDetector(behavior:HitTestBehavior.translucent,
        onTap: (){
        hideTheDropDown();
        },onVerticalDragUpdate:(details) {
          hideTheDropDown();
        },onHorizontalDragUpdate: (details) {
          hideTheDropDown();
        },
        child: Stack(
          children: [
            Positioned(
              right: xPosition + 40,
              width: 100,
              top: yPosition,
              height: 40,
              child: DropDown(
                itemHeight: height,
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: () {
        setState(() {
          if (isDropdownOpened) {
            floatingDropdown.remove();
          } else {
            findDropdownData();
            floatingDropdown = _createFloatingDropdown();
            Overlay.of(context).insert(floatingDropdown);
          }
          isDropdownOpened = !isDropdownOpened;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child:Icon(Icons.add_box,color: Colors.white,)
      ),
    );
  }
  hideTheDropDown(){
    if (isDropdownOpened) {
      floatingDropdown.remove();
    }
    setState(() {
      isDropdownOpened = false;
    });
  }
}


class DropDown extends StatelessWidget {
  final double itemHeight;
  const DropDown({Key key, this.itemHeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("drop down opened");
    return Column(
      children: <Widget>[
        Material(
          elevation: 20,
          child: Container(width: 100,
            height: 40,
            decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
              Icon(Icons.remove,color: Colors.black,),
              Text("1"),
              Icon(Icons.add_box,color: Colors.black,)
            ],)
          ),
        ),
      ],
    );
  }
}

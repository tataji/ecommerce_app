import 'package:e_commerce/provider_model/MyCartViewModel.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String text;
  MyCartViewModel myCartViewModel;
  Function minusIconPress;
  Function plusIconPress;
  int count;
  CustomDropdown({Key key, @required this.text,this.myCartViewModel,
    this.minusIconPress,this.plusIconPress,this.count}) : super(key: key);

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
    print(height);print(width);print(xPosition);print(yPosition);
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
              right: xPosition + 55,
              width: 100,
              top: yPosition,
              height: 40,
              child: Column(
                      children: <Widget>[
                        Material(elevation: 20,
                          child: Container(width: 100,
                              height: 40,
                              decoration: BoxDecoration(color: whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(onTap:widget.minusIconPress,
                                      child: Icon(Icons.remove,color: Colors.black,)),
                                  Text('${widget.count}'),
                                  GestureDetector(onTap: widget.plusIconPress,
                                      child: Icon(Icons.add_box,color: Colors.black,))
                                ],)
                          ),
                        ),
                      ],
                    )
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
        child: Icon(Icons.add_box,color: whiteColor,)
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


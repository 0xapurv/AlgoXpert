import 'package:app/ui/childcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentCard extends StatefulWidget {
  const ParentCard({
    Key key,
    @required this.database,
    @required this.listText,
    @required this.numbers,
    @required this.index,
    @required this.leadingIcons,
    @required this.trailingIcons,
    @required this.isOpen,
  }) : super(key: key);

  final Map database;
  final List listText;
  final List numbers;
  final int index;
  final List leadingIcons;
  final List trailingIcons;
  final List isOpen;
  @override
  _ParentCardState createState() => _ParentCardState();
}

class _ParentCardState extends State<ParentCard> {
  void changeIsOpen(int index) {
    setState(() {
      widget.isOpen[index] = widget.isOpen[index] ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.numbers.shuffle();
    return Column(
      children: [
        // Padding(padding: EdgeInsets.only(top: 20)),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(colors: [
                  Color(0xFFFCA91E),
                  Color(0xFFFBC02D),
                  Color(0xFFFFC228),
                ]),
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0x33000000),
                //       blurRadius: 20,
                //       offset: Offset(0, 25),
                //       spreadRadius: -10)
                // ],
              ),
              margin: EdgeInsets.fromLTRB(19, 10, 19, 6),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 14.0),
                    child: Image.asset(
                      widget.leadingIcons[widget.index],
                      height: 98.h,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      widget.listText[widget.index],
                      style: GoogleFonts.bebasNeue(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 19, 50, 0),
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      widget.trailingIcons[widget.index],
                      // color: Color(0xFFFBC02D),
                      // colorBlendMode: BlendMode.overlay,
                      height: 170.h,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(19, 10, 19, 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: MaterialButton(
                  child: SizedBox(height: 161.h, width: 600.w),
                  onPressed: () {
                    HapticFeedback.vibrate();
                    changeIsOpen(widget.index);
                    // print(isOpen);
                  },
                ),
              ),
            ),
          ],
        ),
        widget.isOpen[widget.index]
            ? ChildCard(
                database: widget.database,
                listText: widget.listText,
                numbers: widget.numbers,
                index: widget.index)
            : Container()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/screens/code.dart';

class ChildCard extends StatefulWidget {
  const ChildCard({
    Key key,
    @required this.database,
    @required this.listText,
    @required this.numbers,
    @required this.index,
  }) : super(key: key);

  final Map database;
  final List listText;
  final List numbers;
  final int index;
  @override
  _ChildCardState createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 377.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.database[widget.listText[widget.index]].length,
          itemBuilder: (BuildContext context, int index2) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Color(0x33000000),
                    //       blurRadius: 20,
                    //       offset: Offset(0, 25),
                    //       spreadRadius: -10)
                    // ],
                  ),
                  margin: EdgeInsets.fromLTRB(19, 10, 0, 6),
                  child: Container(
                    width: 290.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 17, horizontal: 14.0),
                          child: Image.asset(
                            "assets/images/Big Shoes Happy Costumer-${widget.numbers[index2]}.png",
                            height: 134.h,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                          child: Text(
                            widget.database[widget.listText[widget.index]]
                                    [index2]
                                .toString()
                                .replaceAll("_", " "),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.abrilFatface(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 10, 19, 6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: MaterialButton(
                      child: SizedBox(height: 359.h, width: 232.w),
                      onPressed: () {
                        HapticFeedback.vibrate();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CodeBD(widget
                              .database[widget.listText[widget.index]][index2]
                              .toString());
                        }));
                      },
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

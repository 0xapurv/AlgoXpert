import 'package:app/ui/analysis.dart';
import 'package:app/ui/parentcard.dart';
import 'package:app/visualizer/SortScreen.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  List isOpen = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List leadingIcons = [
    "assets/images/graph.png",
    "assets/images/search.png",
    "assets/images/sort.png",
    "assets/images/plus.png",
    "assets/images/data.png",
    "assets/images/process.png",
  ];
  List listText = [
    "Graph",
    "Search",
    "Sort",
    "Maths",
    "Data Structures",
    "Greedy"
  ];
  List trailingIcons = [
    "assets/images/Cityscapes Downtown.png",
    "assets/images/Cityscapes Downtown-1.png",
    "assets/images/Cityscapes Downtown-2.png",
    "assets/images/Cityscapes Downtown-3.png",
    "assets/images/Cityscapes Downtown-4.png",
    "assets/images/Cityscapes Downtown-5.png",
  ];
  Map database = {
    "Graph": ["Depth_First_Search", "Breadth_First_Search"],
    "Search": ["Binary_Search", "Linear_Search"],
    "Sort": [
      "Bubble_Sort",
      "Heap_Sort",
      "Insertion_Sort",
      "Merge_Sort",
      "Quick_Sort",
      "Selection_Sort"
    ],
    "Maths": [
      "Even_Odd",
      "Factorial",
      "Fibonacci",
      "Greatest_Common_Divisor",
      "Lowest_Common_Multiple",
      "Max_Pairwise_Product",
      "Prime_Numbers",
      "Swap_Numbers"
    ],
    "Data Structures": [
      "AVL_Tree",
      "Array_Methods",
      "Binary_Search_Tree",
      "Huffman_Tree",
      "Infix_to_Postfix",
      "Infix_to_Prefix",
      "Intersect_Arrays",
      "Postfix_to_Infix",
      "Prefix_to_Infix",
      "Priority_Queue",
      "Queue_using_Array",
      "Queue_using_Linked_List",
      "Queue_using_Stacks",
      "Reverse_Linked_List",
      "Stack_using_Array",
      "Stack_using_Linked_List",
      "Stack_using_Queues",
      "Union_Array",
      "Union_Sorted_Array"
    ],
    "Greedy": ["Knapsack_Problem"],
  };
  List numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 1440, width: 720, allowFontScaling: true);
    numbers.shuffle();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        color: Color(0xFF3F5F9),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              backgroundColor: Color(0xFFFFFFFF),
              pinned: this._pinned,
              snap: this._snap,
              floating: this._floating,
              expandedHeight: 495.0.h,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("AlgoXpert",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 20, color: Color(0xFF000000))),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 60.w,
                            ),
                            Image.asset(
                              "assets/images/appbar.png",
                            ),
                          ],
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/appbartext.png"),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SliverList(delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              if (index > listText.length - 1) return null;
              if(selectedIndex == 1) return HomeScreen();
              if(selectedIndex == 2) {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SortScreen()),
                );
              }
              return ParentCard(
                  database: database,
                  index: index,
                  trailingIcons: trailingIcons,
                  listText: listText,
                  isOpen: isOpen,
                  leadingIcons: leadingIcons,
                  numbers: numbers);
            }))
          ],
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(

          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: true,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.analytics,
            label: 'Analyze',
            selectedBackgroundColor: Colors.green,
          ),
          FFNavigationBarItem(
            iconData: Icons.graphic_eq,
            label: 'Vusialize',
            selectedBackgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

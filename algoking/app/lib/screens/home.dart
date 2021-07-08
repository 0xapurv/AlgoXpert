import 'package:app/ui/analysis.dart';
import 'package:app/ui/parentcard.dart';
import 'package:app/visualizer/ColorConstants.dart';
import 'package:app/visualizer/SortScreen.dart';
import 'package:app/visualizer/VisulizerProvider.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Size size;
  double topStatus = 0;
  double bottomStatus = 0;

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
    size = MediaQuery.of(context).size;
    topStatus = MediaQuery.of(context).padding.top;
    bottomStatus = MediaQuery.of(context).padding.bottom;

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

              if(selectedIndex == 1){
                if (index > 0) return null;
                return HomeScreen();}
              else if(selectedIndex == 2) {
                if (index > 0) return null;
                 return x(size,topStatus,bottomStatus);
              }
              if(selectedIndex == 0){
                if (index > 5) return null;
              return ParentCard(
                  database: database,
                  index: index,
                  trailingIcons: trailingIcons,
                  listText: listText,
                  isOpen: isOpen,
                  leadingIcons: leadingIcons,
                  numbers: numbers);
              }
              return null;
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

  Widget x(Size size,double topStatus,double bottomStatus){
    return Container(
      height: 670,
      child: ChangeNotifierProvider<VisulizerProvider>(
        create: (context) => VisulizerProvider(
            (size.width).toInt(), (400 - (topStatus + 16)).toInt()),
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: mPrimaryLight,
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(22),
                //     bottomRight: Radius.circular(22)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 4.0), //(x,y)
                    blurRadius: 16.0,
                  ),
                ],

              ),
              padding: EdgeInsets.only(
                  left: 0, top: topStatus + 8, right: 0, bottom: 0),
              child: Consumer<VisulizerProvider>(
                builder: (context, mVisulizer, child) {
                  return ClipRRect(
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(16),
                    //     bottomRight: Radius.circular(16)),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Wrap(
                            children: [
                              Container(
                                width: 1,
                                height:
                                mVisulizer.arrayOfBars[index].toDouble(),
                                color: mPrimary,
                              ),
                            ],
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: mVisulizer.arrayOfBars.length,
                    ),
                  );
                },
              ),
            ),

            Consumer<VisulizerProvider>(
              builder: (context, mVisulizer, child){

                return Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 6),
                  child: SingleChildScrollView(child: Wrap(
                    children: [
                      getAlgoBadgeWidget("Quick sort", mVisulizer.algorithmType == 0, (){ mVisulizer.setAlgorithmType(0); }),
                      getAlgoBadgeWidget("Selection sort", mVisulizer.algorithmType == 1, (){ mVisulizer.setAlgorithmType(1); }),
                      getAlgoBadgeWidget("Insertion Sort", mVisulizer.algorithmType == 2, (){ mVisulizer.setAlgorithmType(2); }),
                      getAlgoBadgeWidget("Merge Sort", mVisulizer.algorithmType == 3, (){ mVisulizer.setAlgorithmType(3); }),
                      getAlgoBadgeWidget("Heap Sort", mVisulizer.algorithmType == 4, (){ mVisulizer.setAlgorithmType(4); }),
                      getAlgoBadgeWidget("Gnome Sort", mVisulizer.algorithmType == 5, (){ mVisulizer.setAlgorithmType(5); }),
                      getAlgoBadgeWidget("Bubble Sort", mVisulizer.algorithmType == 6, (){ mVisulizer.setAlgorithmType(6); })
                    ],
                  )),
                ));
              },

            ),

            Consumer<VisulizerProvider>(builder: (context, mVisulizer, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          color: mVisulizer.isRunning ? mRed : mPrimary,
                          child: TextButton(
                            child: Text(
                              mVisulizer.isRunning ? "Stop" : "Start",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              if (mVisulizer.isRunning)
                                mVisulizer.isRunning = false;
                              else
                                await mVisulizer.start();
                            },
                          )),
                    ),
                    Container(
                      width: 8,
                    ),
                    Card(
                      color: mPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: IconButton(
                        icon: Icon(
                          Icons.autorenew_sharp,
                          color: Colors.white,
                        ),
                        onPressed: () => mVisulizer.resetBars(),
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(
              height: bottomStatus,
            )
          ],
        ),
      ),
    );
  }

  Widget getAlgoBadgeWidget(String text, bool isSelected, VoidCallback onHit) {

    return InkWell(
      onTap: onHit,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14.0),
        decoration: BoxDecoration(
            color: isSelected ? mPrimary : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24)),
            border: isSelected ? null : Border.all(color: mPrimary, width: 1)
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : mPrimary,
          ),
        ),
      ),
    );

  }
}

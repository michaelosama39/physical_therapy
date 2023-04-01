import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:physical_therapy/screens/categories_screen.dart';
import 'package:physical_therapy/screens/privacy_policy_screen.dart';
import 'package:physical_therapy/widgets/category_item.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool onSelected = false;

  openPage(BuildContext ctx) {
    // Future.delayed(Duration.zero,(){
    //   Navigator.of(ctx).pushNamed(
    //     CategoriesScreen.routeName,
    //   );
    // });
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   Navigator.of(ctx).pushNamed(
    //            CategoriesScreen.routeName,
    //          );
    // });

    Navigator.of(ctx).pushNamed(
      CategoriesScreen.routeName,
    );

    // Navigator.of(ctx).push(
    //   MaterialPageRoute(
    //     builder: (_){
    //
    //       return CategoriesScreen();
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Orthosis Guide'),
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/splash.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Orthosis Guide',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              // Column(
              //   children: [
              //     InkWell(
              //       child: Text(
              //         'Get Start',
              //         style: TextStyle(fontSize: 35),
              //       ),
              //       onTap: openPage(context),
              //     )
              //   ],
              // ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PrivacyPolicyScreen()));
                      },
                      child: Text(
                        'By continuing, you agree to our Terms of Service and Privacy Policy.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.blue,
                    side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    value: onSelected,
                    onChanged: (v) {
                      setState(() {
                        onSelected = v!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(15)
            // ),
            onPressed: () {
              if (onSelected) {
                Navigator.of(context).pushNamed(
                  CategoriesScreen.routeName,
                );
              }
            },
            child: Text('Go'),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //
      //   onPressed: (){
      //     Navigator.of(context).pushNamed(
      //       CategoriesScreen.routeName,
      //     );
      //   },
      //   child: Text('Go'),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

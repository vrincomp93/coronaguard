import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';
import '../fintness_app_theme.dart';

class DistantContactView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  const DistantContactView({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    FintnessAppTheme.white,
                    HexColor("#FFFFFF")
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: FintnessAppTheme.grey.withOpacity(0.6),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                        child: Text(
                          'Distant Contact',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: FintnessAppTheme.fontName,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 0.0,
                            color: FintnessAppTheme.nearlyBlack,
                          ),
                        ),
                      ),
                      Text(
                        'Someone just self-reported a positive test. During the time they were potentially contagious, they spent at least 5 minutes near two more people, who spent at least 5 minutes near you.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: FintnessAppTheme.fontName,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          color: FintnessAppTheme.nearlyBlack,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 16, bottom: 8),
                        child: Container(
                          height: 2,
                          decoration: BoxDecoration(
                            color: FintnessAppTheme.background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 8, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Positioned(
                              // top: -2,
                              // left: 0,
                              child: SizedBox(
                                width: 330,
                                height: 100,
                                child:
                                    Image.asset("assets/fitness_app/distant.png"),
                              ),
                            ),
                          ],
                        ),
                      )
                      
                      

                      
                      
                      // SizedBox(
                      //   height: 32,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 4),
                      //   child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.end,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: <Widget>[
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 4),
                      //         child: Icon(
                      //           Icons.timer,
                      //           color: FintnessAppTheme.white,
                      //           size: 16,
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 4.0),
                      //         child: Text(
                      //           '68 min',
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //             fontFamily: FintnessAppTheme.fontName,
                      //             fontWeight: FontWeight.w500,
                      //             fontSize: 14,
                      //             letterSpacing: 0.0,
                      //             color: FintnessAppTheme.white,
                      //           ),
                      //         ),
                      //       ),
                      //       Expanded(
                      //         child: SizedBox(),
                      //       ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     color: FintnessAppTheme.nearlyWhite,
                            //     shape: BoxShape.circle,
                            //     boxShadow: <BoxShadow>[
                            //       BoxShadow(
                            //           color: FintnessAppTheme.nearlyBlack
                            //               .withOpacity(0.4),
                            //           offset: Offset(8.0, 8.0),
                            //           blurRadius: 8.0),
                            //     ],
                            //   ),
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(0.0),
                            //     child: Icon(
                            //       Icons.arrow_right,
                            //       color: HexColor("#6F56E8"),
                            //       size: 44,
                            //     ),
                            //   ),
                            // )
                          // ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

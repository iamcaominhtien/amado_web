import 'package:amado_web/services/responsive.dart';
import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  const Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 350.0,
      ),
      child: Container(
        // height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 60),
        color: const Color(0xFF3C3C3C),
        child: Responsive.isDesktop(context)
            ? Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          // textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                            children: [
                              TextSpan(
                                text: "Subscribe for a",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: " 25% Discount",
                                style: TextStyle(
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Flexible(
                          child: Text(
                            "Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              height: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 15,
                                ),
                                isDense: true,
                                fillColor: Colors.white,
                                filled: true,
                                border: InputBorder.none,
                                hintText: "Your email",
                                suffixIcon: Material(
                                  color: Colors.orange,
                                  child: MaterialButton(
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 8),
                                      child: Text(
                                        'Subscribe',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Material(
                        //   color: Colors.orange,
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 10),
                        //     child: MaterialButton(
                        //       child: const Text('Subscribe'),
                        //       onPressed: () {},
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              )
            : Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Responsive.isMobile(context) ||
                            Responsive.isTabletSmallest(context)
                        ? 30
                        : 40,
                    horizontal: Responsive.isMobile(context) ? 15 : 40),
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.spa,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    Responsive.isMobile(context) ? 25 : 40,
                              ),
                              children: const [
                                TextSpan(
                                  text: "Subscribe for a",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: " 25% Discount",
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Flexible(
                            child: Text(
                              "Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                height: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (Responsive.isMobile(context) ||
                        Responsive.isTabletSmallest(context))
                      const SizedBox(
                        height: 15,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 15,
                                ),
                                isDense: true,
                                fillColor: Colors.white,
                                filled: true,
                                border: InputBorder.none,
                                hintText: "Your email",
                                suffixIcon: Material(
                                  color: Colors.orange,
                                  child: MaterialButton(
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 8),
                                      child: Text(
                                        'Subscribe',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                // suffix: Material(
                                //   color: Colors.orange,
                                //   child: Padding(
                                //     padding: EdgeInsets.symmetric(vertical: 10),
                                //     child: MaterialButton(
                                //       child: Text(
                                //         'Subscribe',
                                //         style: TextStyle(color: Colors.black),
                                //       ),
                                //       onPressed: () {},
                                //     ),
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

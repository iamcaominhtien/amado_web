import 'package:flutter/material.dart';

class PageNavigation extends StatefulWidget {
  const PageNavigation({Key? key}) : super(key: key);

  @override
  State<PageNavigation> createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  List<Map<String, dynamic>> listIndex = [
    {'id': 1, 'check': true},
    {'id': 2, 'check': false},
    {'id': 3, 'check': false},
    {'id': 4, 'check': false}
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: listIndex
          .map(
            (item) => ButtonPageNavigation(
              index: item['id'],
              isChecked: item['check'],
              callBack: () {
                debugPrint(item['id'].toString());
                setState(() {
                  int n = listIndex.length;
                  for (int i = 0; i < n; i++) {
                    if (listIndex[i]['id'] == item['id']) {
                      listIndex[i]['check'] = true;
                    } else {
                      listIndex[i]['check'] = false;
                    }
                  }
                });
              },
            ),
          )
          .toList(),
    );
  }
}

class ButtonPageNavigation extends StatefulWidget {
  const ButtonPageNavigation(
      {Key? key, required this.index, required this.isChecked, this.callBack})
      : super(key: key);
  final int index;
  final bool isChecked;
  final Function()? callBack;

  @override
  State<ButtonPageNavigation> createState() => _ButtonPageNavigationState();
}

class _ButtonPageNavigationState extends State<ButtonPageNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Material(
        color: widget.isChecked ? Colors.orange : Colors.white,
        child: MaterialButton(
          onPressed: widget.callBack,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.index.toString(),
              style: TextStyle(
                color: widget.isChecked ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

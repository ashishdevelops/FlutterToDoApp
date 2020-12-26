import 'package:flutter/material.dart';
import 'package:test_flutter/checkbox.dart';

class TextContainerBase extends StatefulWidget {

  @override
  TextContainer createState() => TextContainer();
  
}

class TextContainer extends State<TextContainerBase> {
  @override
  Widget build(BuildContext context) {
    bool _checked = false;
    TextDecoration _strk = TextDecoration.none;
    final _controller = TextEditingController();

    return StatefulBuilder( builder: (BuildContext context, StateSetter setState){
      return Container(
      //margin: EdgeInsets.symmetric( vertical: 1.0),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
      )),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Checkbox(
                value: _checked,
                onChanged: (bool newValue) {
                  setState(() {
                    _checked = newValue;
                    if(_checked == true){
                      _strk = TextDecoration.lineThrough;
                    }else{
                      _strk = TextDecoration.none;
                    }

                    print("_checked: " + '$_checked');
                    print("_strk: " + '$_strk');
                  });
                },
              )
          ),
          Flexible(
            child: EditableText(
              focusNode: FocusNode(),
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black, fontSize: 24, decoration: _strk),
              controller: _controller,
              backgroundCursorColor: Colors.black,
              textAlign: TextAlign.start,
              
            )
          ),
        ],
      ),
      height: 50.0,
    );
    });
  }
}
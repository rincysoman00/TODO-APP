import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoButtons extends StatefulWidget{
  const DemoButtons({super.key});


  @override
  State<DemoButtons> createState() {
    return _DemoButtonsState();
  }
}

class _DemoButtonsState extends State<DemoButtons> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('DemoButtons BUILD called');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = false;
                    });
                  },
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = true;
                    });
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
            if (_isUnderstood) const Text('Awesome!'),
      
    ],
    );
            
    
  }
}
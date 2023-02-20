import 'package:flutter/material.dart';
void main() {
  runApp(const HappyAPP());
}
class HappyAPP extends StatelessWidget {  //自定义无状态根组件
  const HappyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.yellow),
      home: const GreenCenter(),
    );
  }
}

class GreenCenter extends StatelessWidget {
  const GreenCenter({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return  Scaffold( 
        appBar: AppBar(title:const Text("开心麻花首页"),),
        body: const Center(child:
        Text("Home",textDirection: TextDirection.ltr,style:  TextStyle(fontSize: 40,color: Colors.greenAccent),),),
    );
    
    
  }
}
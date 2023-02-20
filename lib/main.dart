import 'package:flutter/material.dart';
void main() {
  runApp(const MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  const MyWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "开心麻花",
    theme: ThemeData(primarySwatch:Colors.yellow),
    home: Scaffold(
             appBar: AppBar(title: const Text("开心麻花"),),
             body:Column(
                      children:const [MyContainer(),                    
                      MyButton(),         
                      ] 
                                  
       )
             )
     ,
   );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(  //容器
                        width: 200,
                        height: 200,
                        alignment: Alignment.center, 
                        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow,  //背景颜色
                          // image: const DecorationImage(image: NetworkImage("https://image.baidu.com/search/detail?tn=baiduimagedetail&word=%E4%BA%BA%E7%89%A9&album_tab=%E4%BA%BA%E7%89%A9&album_id=46&ie=utf-8&fr=albumsdetail&cs=4102906198,4131047208&pi=14051&pn=21&ic=0&objurl=https%3A%2F%2Ft7.baidu.com%2Fit%2Fu%3D4102906198%2C4131047208%26fm%3D193%26f%3DGIF"),fit:BoxFit.cover),
                          border:Border.all(color: const Color.fromARGB(222, 43, 192, 53),width: 5),//配置边框
                          borderRadius: const BorderRadius.all(Radius.circular(10)), //设置圆角
                          // borderRadius: BorderRadius.circular(100) ,//设置圆形
                          boxShadow:  List.filled(1, const BoxShadow(color: Colors.red,blurRadius: 5)), //配置阴影效果
                          gradient: const LinearGradient(colors: [Colors.red,Colors.purple]), //配置线性渐变色
                        
                          ),//边框颜色及宽度  
                          //  transform: Matrix4.translationValues(20,0,0),//平移
                            //  transform: Matrix4.rotationX(0.2),//旋转
                            transform: Matrix4.skewY(-0.1),//缩放
                           
                          
                        child: const Text("container",style: TextStyle(fontSize: 36,color: Colors.white),),
                        ),
    );   
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(
      width: 200,
      height: 40,
      margin:const EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      decoration:const BoxDecoration(color: Colors.blue,boxShadow:[BoxShadow(color: Colors.grey)],
      borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: const Text("CustomButton",style: TextStyle(fontSize: 20,color: Colors.white ),),
    ) ,) ;
  }
}


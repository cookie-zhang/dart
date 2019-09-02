//类与对象，声明、创建及基本特性
//构造方法及初始化列表
//静态成员及对象操作符的使用


//类与对象---------------------------------------------

///关键字class声明一个类
///关键字new创建一个对象，new可以省略
///所有对象都继承与Object类

///属性和方法：
///属性会默认生成getter和setter方法
///使用final声明的属性只有getter方法
///属性和方法通过 . 访问
///方法不能被重载

// void main(){
//   var person = new Person();   //new可以省略
//   person.name = 'Tom';
//   person.age = 10;
//   // person.address = 'aaa';//只读   不能重新赋值
//   print(person.name);//Tom
//   print(person.address);//null
//   person.work();//name is Tom , age is 10
// }
// class Person{
//   String name;
//   int age;
//   final String  address;  

//   // Person(this.address);
//   void work(){
//     print("name is $name, age is $age");
//   }
// }

//类及成员可见性
///Dart 中的可见性以library（库）为单位
///默认情况下，每个Dart文件就是一个库
///使用_表示库的私有性
///使用import导入


// class Person{
//   String name;
//   // String _name;  加下划线变成私有   007面向对象1.1（import）.dart  引入就会报错
//   int age;
//    String  address;  

//   // Person(this.address);
//   void work(){
//     print("name is $name, age is $age");
//   }
// }



//计算属性：
/// 计算属性通过计算而来    本身不存储值
/// 计算属性值  其实是通过计算转换到其他实例变量

void main(){
  var rect = new Rectangle();
  rect.width = 10;
  rect.height = 20;
  print(rect.area());
  

}

class Rectangle{
  num width,height;
  //正常计算
  // num area(){
  //   return width*height;
  // }

  //计算属性  使用关键字  get  set
   num get area => width * height;
   set area(value){
     width = value / 20;
   }
  
}
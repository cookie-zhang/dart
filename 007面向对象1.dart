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

// void main(){
//   var rect = new Rectangle();
//   rect.width = 10;
//   rect.height = 20;
//   print(rect.area);//100
//   rect.area = 200;
//   print(rect.width);//10.0
// }

// class Rectangle{
//   num width,height;
//   //正常计算
//   // num area(){
//   //   return width*height;
//   // }

//   //计算属性  使用关键字  get  set
//    num get area => width * height;
//    set area(value){
//      width = value / 20;
//    }
  
// }

//构造方法------------------------------------
///如果没有自定义构造方法，则会有个默认构造方法
///如果存在自定义构造方法，则会默认构造方法无效
///构造方法不能重载

//命名构造方法
///使用命名构造方法，可以实现多个构造方法
///使用类名.方法 的形式实现

//常量构造方法-------------------------------------------
///如果类是不可变状态，可以把对象定义为编译时常量
///使用const声明构造方法，并且所有变量都为final
///使用const声明对象，可以省略

//常量的优点： 运行输出更快
// void main(){
//   const person = const Person('tom',  10,  'Male');
//   person.work();
// }

// class Person{
//   final String name;
//   final int age;
//   final String gender;
//   const Person(this.name,this.age,this.gender)

//   void work(){
//     String name = 'san';
//     print('working $name');
//   }
// }



//工厂构造方法
///类似于设计模式中的工厂模式
///在构造方法前添加关键字factory实现一个工厂构造方法
///在工厂构造方法中可返回对象

// void main(){

// }

// class Logger{
//   final String name;
//   static final Map<String, Logger> _cache = <String, Logger>{};
//   factory Logger(String name){
//     return Logger._internal('Dart');
//   }
//   Logger._internal(this.name);
//   void log(String msg){
//     print(msg);
//   }
// }


//初始化列表
///初始化列表会在构造方法体执行之前执行
///使用逗号分隔初始化表达式
///初始化列表常用于设置final变量的值


//静态成员   既可以是方法   也可以是属性  ---------------------------------------------
///使用static关键字来实现类级别的变量和函数
///静态成员不能访问非静态成员，非静态成员可以访问静态成员
///类中的常量需要使用static const 声明

// void main(){
//   var page = new Page();
//   // page.scrollDown();
//   Page.scrollDown();

// }
//  class Page {
//   static int currentPage = 1;
//    //下滑
//    static void scrollDown(){
//      currentPage = 1;
//      print('down.....');
//    }

//    //上滑
//    void scrollUp(){
//      currentPage++;
//      print('up.....');
//    }
//  }

//对象操作符
///条件访问 ?.
///类型转换 as
///是否指定类型 is  is!
///级联操作 ..
// void main(){
  // Person person = new Person();
  // person?.name;  //不知道是否为空的时候可以使用


  // //as
  // var person;
  // person = "";
  // person = new Person();
  // // (person as Person).work(); //working.....
  
  // //is is!
  // if(person is Person){
  //   person.work();
  // }
  //  if(person is! Person){
  //   // person.
  // }

//级联操作
// new Person()..name = 'Tome'
//             ..age = 20
//             ..work();
// }

// class Person{
//   String name;
//   int age;
//   void work(){
//     print("working.....");
//   }
// }


//对象call方法
///如果类实现call() 实现，则该类的对象可以作为方法使用
void main(){
  var person = new Person();
  person.name = 'Tome';
  person.age = 20;
  // person.work();
  person();//working.....Tom --- 20
}

class Person{
  String name;
  int age;
  // void work(){
  //   print("working.....$name --- $age");
  // }


void call(){
  print("working.....$name --- $age");
}



}




//小结   类声明  对象创建  属性  方法 可见性  计算属性
// 构造方法  命名构造方法   常量构造方法   工厂构造方法
// 初始化列表   静态成员   操作符   call方法
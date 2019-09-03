//继承   继承中的构造方法
//抽象类
//接口
//Mixins  操作符的覆写

//继承------------------------------------------


///使用关键字extends 继承一个类
///之类会继承父类可见的属性和方法，不会继承构造方法
///之类能够复写父类的方法  getter 和 setter
///单继承   多态性


// void main(){
//   var study = new Student();
//   study.study();
//   study.run();//继承Person
// }


// class Person{
//   String name;
//   int age;
//   String birthday;
//   bool get isAdult => age >18;

//   void run(){
//     print('person run.....');
//   }
// }

// //继承
// class Student extends Person{
//   void study(){
//     print('student study.........');
//   }

    
//   //改变父类方法属性值
//   @override  //意思是明确知道是改变父类
//   bool get isAdult => age >15;
// }


//继承中的构造方法------------------------------------------------------
///之类构造方法默认会调用父类的无名（默认构造函数）无参数构造方法
///如果父类没有无名无参构造方法  则需要显示调用父类构造方法   
///在构造方法参数后使用 ：显示调用父类构造方法

// void main(){
//   var student = new Student('Tom');
//   var name = student.name;
// }

// class Person {
//   String name;
//   Person(this.name);

//   Person.withName(this.name)
// }


// class Student extends Person{
//   int age;

//   Student(String name) : super.withName(name);
// }


//构造方法执行顺序---------------------------------------------
/// 父类的构造方法在子类构造方法体开始执行的位置调用
/// 如果又初始化列表，初始化列表胡子爱父类构造方法之前执行



//抽象类---------------------------------------------------
///抽象类使用abstract表示    不能直接被实例化    但是可以去继承
///抽象方法不用abstract修饰    无实现
///抽象类可以没有抽象方法
///有抽象方法的类一定得生命抽象类


// void  main(){
//   var person = new Student();
// }

// abstract class Person{
//   void run ()
// }

// class  Student extends Person{

//   void run (){

//   }
// }


//接口-----------------------------------------------------
///类和接口是统一得，类就是接口
///每个类都隐式得定义了一个包含所有实例成员得接口
///如果是复用已有类得实现   使用继承（extends）
// void main(){
//   var student = new Student();
//   student.run();
// }


// class Person{
//   String name;

//   int get age=>18;
//   void run(){
//     print('Person run ....');
//   }
// }

// class Student implements Person{
//   //重写父类得属性和方法
//   @override
//   String name;

//   @override
//   int get age => 15;

//   @override
//   void run() {
//   }

// }

// abstract  class Person{
 
//   void run();
// }

// class Student implements Person{   //最好是使用抽象类做为接口
//   @override
//   void run() {
//     print('student run ...');
//   }

// }



//Mixins
///Minxins 类似于多继承    是在多继承中重用一个类代码的方式
///作为Minxin的类不能有显示声明构造方法
///作为Mixin的类只能继承自 Object
///使用关键字with继承一个或多个minxs
// void main(){
// }

// class A{
//   void a (){
//     print('a.............');
//   }
// }
// class B{
//   void b (){
//     print('b.............');
//   }
// }
// class C{
//   void c (){
//     print('c.............');
//   }
// }

// ///同时继承 A B C  实现多继承
// class D extends A with B,C{

// }


//操作符覆写------------------------------
///覆写操作符需要在类中定义   返回类型  operator 操作符（参数1，参数2）{实现体。。。。    return 返回值}
///如果覆写==   还需要覆写对象的hashCode getter方法


void main(){
  var p1 = new Person(10);
  var p2 = new Person(20);
  print(p1  >  p2);//false  
}

class Person{
  int age;
  Person(this.age);

  bool operator >(Person person){
      return this.age > person.age;
  }
}
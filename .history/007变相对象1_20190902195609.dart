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

void main(){
  var person = new Person();   //new可以省略
}

class Person{
  String name;
  int age;
  
}
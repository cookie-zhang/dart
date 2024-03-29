import '.history/006方法定义_20190902174559.dart' as prefix0;

void main(List args){

// 返回类型   方法名 （参数）{  return  ‘test’}

  print(args);

  //在main中直接调用方法
  print (getPerson('张三',18));   // name=张三 age=18
  print (getPerson1('张三1',118));   // 可省略


}

String getPerson(String name, int age){
  return "name=$name, age=$age";
}
 getPerson1( name,  age){
  return "name=$name, age=$age";
}

getPerson2()=> 1; //箭头函数   返回1  也可以写表达式
//方法特性---------------
///方法也是对象  并且又具体类型Funtion
///返回值类型 、 参数类型都可以省略
///箭头语法：=>expor 是{return expor}缩写    只适用于一个表达式
///方法都有后返回值   如果没有写   默认 return null


//可选参数-------------
///可选命名参数：{param1,param2,.....}
///可选位置参数：[param1,param2,.....]
///如果存在具体的参数，可选参数声明，必须在参数后面   比如下面的 String name  就必须在前面
///方法  test(String name,{int age,String a})   test('张三')   test('张三'，age: 10, a:'asd')  还可以  test('张三'，a:'asd') 不传age
///方法  test(String name,[int age, String a])   test('张三'，18，'ads')



//默认参数
///使用 = 在可选参数制定默认值
///默认值只能是编译时常量


//方法对象  
///方法可作为对象赋值给其他变量
///方法可作为参数传递给其他方法

void main1(){
  // var func = printHello;//方法可作为对象赋值给其他变量   也可以写成 Function
  Function func =printHello;
  func();
}
void printHello(){
  print('hello');
}


//匿名方法   定义方式  （参数1，参数2，.....）{ 方法体....     return 返回值 }
//匿名方法特性
/// 可赋值给变量，通过变量进行调用
/// 可在其它方法中直接调用或传递给其他方法
void main3(){
   var a = (a,b){
     return print('匿名方法$a+$b');
   };
   a(1,2);//匿名方法1+2
   //还可以
   ((){
     return 1;
   })();
}



//闭包
///闭包是一个方法（对象）
///闭包定义在其他方法内部
///闭包能够访问外部方法内的局部变量，并持有其状态

void main4(){
  var fun = a();   //这样就能访问内部的变量   闭包
  fun();//0  
  fun();//1
  fun();//2
  fun();//3
}

a(){
  var count = 0;
  b(){
    print(count++);
  }

  return b;
}

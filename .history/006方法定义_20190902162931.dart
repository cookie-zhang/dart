void main(List args){

// 返回类型   方法名 （参数）{  return  ‘test’}

  print(args);

  //在main中直接调用方法
  print (getPerson('张三',18));   // name=张三 age=18

 print (getPerson1('张三1',118));   // 可省略




//可选参数
///可选命名参数：{param1,}
}



String getPerson(String name, int age){
  return "name=$name, age=$age";
}
 getPerson1( name,  age){
  return "name=$name, age=$age";
}

getPerson2()=> 1; //箭头函数   返回1  也可以写表达式
//方法特性
///方法也是对象  并且又具体类型Funtion
///返回值类型 、 参数类型都可以省略
///箭头语法：=>expor 是{return expor}缩写    只适用于一个表达式
///方法都有后返回值   如果没有写   默认 return null
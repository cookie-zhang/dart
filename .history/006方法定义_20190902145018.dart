void main(List args){

// 返回类型   方法名 （参数）{  return  ‘test’}

  print(args);

  //在main中直接调用方法
  print (getPerson('张三',18));   // name=张三 age=18


}



String getPerson(String name, int age){
  return "name=$name, age=$age";
}
//方法特性
///方法也是对象  并且又具体类型Funtion
///返回值类型 、 参数类型都可以省略
///箭头语法：=>expor 是{return expor}缩写
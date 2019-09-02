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
///
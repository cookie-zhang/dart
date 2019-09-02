import ''

void main(){
  var person = new Person();   //new可以省略
  person.name = 'Tom';
  person.age = 10;
  // person.address = 'aaa';//只读   不能重新赋值
  print(person.name);//Tom
  print(person.address);//null
  person.work();//name is Tom , age is 10
}
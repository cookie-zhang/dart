void main(){

//条件语句-----------------------------
/// if   if..else if    if...else if...else
  int a = 90;
  if(a>90){
    print('very good');
  }else if(a>60){
    print('good');
  }else{
    print('no');
  }

//循环语句-----------------------------------
///for   for in
  var list = [1,2,3,4,5];
  for(var i=0; i<list.length;i++){
    print(list[i]);
  }
  for(var item in list){
    print(item);
  }

///while    do  while   和其他语言一样的用法 



/// 终止循环break         跳出当前循环continue   和其他语言一样的用法



/// switch ... case
/// 比较类型： num、 String、编译器常量、对象、枚举
/// 费控case必须有一个break
/// default处理默认情况
/// continue 跳转标签

  String aa = 'dart';
  switch(aa){
    case 'dart':
      print('is dart');
      break;
    case 'dart':
      print('is dart');
      break;
    case 'dart':
      print('is dart');
      break;
    case 'dart':
      print('is dart');
      break;
    default:
      print('none');
  }

  //打印 is dart 
  switch(aa){
    D:
    case 'dart':
      print('is dart');
      break;
    case 'dart':
      print('is dar1t');
      continue D;
      // break;
    case 'dart':
      print('is dart');
      break;
    case 'dart':
      print('is dart');
      break;
    default:
      print('none');
  }
}
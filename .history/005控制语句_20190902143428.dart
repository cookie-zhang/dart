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

}
//枚举
///枚举是一种有穷序列集的数据类型
///使用关键字enum定义一个枚举
///常用于代替常量   控制语句等
///
///
/////Dart 枚举特性
/// index 从0开始，依次累加
/// 不能指定原始值

// const a = 1;
// const b = 2;
// const c = 3;
// const d = 4;


// void main(){
//   const x = 1;
//   switch(x){
//     case a:
//       print(1);
//     break;
//     case b:
//       print(2);
//     break;
//     case c:
//       print(3);
//     break;
//     case d:
//       print(4);
//     break;
//   }
// }

//-------------->改进

// enum number {
//   a,
//   b,
//   c,
//   d
// }
// void main(){
//   const num = number.a;
//   // num.index   0     下标  类似于数组
//   switch(num){
//     case number.a:
//       print(1);
//     break;
//     case number.b:
//       print(2);
//     break;
//     case number.c:
//       print(3);
//     break;
//     case number.d:
//       print(4);
//     break;
//   }
// }

//泛型 ------------------------------------------------------
///Dart 中类型是可选的   可使用泛型限定类型
///使用泛型能够有效减少代码重复

// void main(){
//   var list = new List<String>();
//   list.add(1);
//   list.add('value');
// }

//泛型使用
///类的泛型
///方法的泛型


void main(){
  var list = new Test();
  list.ttt<String>('w');
}

class Test<T>{
  void ttt<T>(T name){
      print(name);
  }



}
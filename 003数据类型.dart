//数值型-Number  （num--> 整型Int   浮点型 double） 
//布尔型-Boolean
//键值对-Map
//字符串-String 
//列表-List
//Runes symols  不常用

void main(){
num a = 10;
a=12.5;

int b =20;
// b=20.2;
// 数值型操作

double c = 10.5;


//数字类型-------------------------------------------------------------

// 运算符：+ 、 - 、 /除 、 ~/取整 、%
//常用属性：idNaN 、idEven 、isOdd等
//常用方法：abs()、 round() 、 floor()、 ceil()、toInt()、 toDouble

print(b + c);//30.5
print(b - c);//9.5
print(b * c);//210.0
print(b / c);//1.9047619047619047
print(b ~/ c);//1
print(b % c);//9.5
print(b.isEven);//true


//字符串-------------------------------------------------------
//''    ""    '''hellord  aa  '''  三个引号代表多行字符串  
String e = 'hello';
String e1 = "hello1";
String e2 = ''' dart
            hello ''';
print(e2);

//字符操作
//运算符 +后面添加东西     *5 乘以五打印五次    ==字符串判断想不想等     [0]字符串的下标
String f = 'hello';
print(f+'添加');
print(f*5);
//插值表达式 ${expression}
num g = 1;
double h = 10.1;
print('g = ${g}');
print('i = ${g+h}');
//常用属性 length判断字符串长度  isEmpty判断为空  isNotEmpty
//常用方法  contains(),subString()  
///        startsWith(),endsWith()  第一个和最后一个字母判断是或否
///        indexOf(),lastIndexOf()
///        toLowerCase(),toUpperCase() //大小写
///        trim(),trimLeft(),trimRight()   //截取空格
///        split(),replaceXXX() //split 转化为数组   replace替换



//布尔类型-----------------------------------------------
bool isTrue = true;
bool isFalse = false;
print(isTrue);
print(isFalse);

//列表-------------------------------------------------------------
//创建的方式:
//创建List: var list = [1,2,3,4]
//创建不可变的List：var list = const [1,2,3,4]
//构造创建： var list = new List()
var list1 = [1,2,3,4,true,'dart'];
print(list1);
print(list1[2]);
list1[1] = 5;//改变数据
var list2 = const [1,2,3,4,true]; //不可变

//数组的操作
/// []  length  获取某个元素   数组的长度
/// add()  insert(index,element)  添加  某个下标下面插入 
/// remove clear 删除
/// indexOf() lastIndexOf() 获取元素位置  能找到返回下标位置   没有的话返回负一
/// sort() sublist()  排序  获取子list  sublist(1,2)从你那个下标开始截取
/// shhuffle asMap foreach 打乱  转化map  循环


//Map----------------------------------------------------------------------
///创建Map：var language = {'fir':'dart'}
///创建不可变Map：var language = const {....}
///构造创建： var language = new Map()

var map = {'firs':1,'secode':true};
print(map['firs']);

///常用操作
///[] length 获取某个值   长度
///isEmpty()  isNotEmpty()   是否为空
///keys values   键值对
///containsKey()  containsValue()  是否包含键值
///remove()  删除
///forEach() 循环 


// dynamic 代表任意类型---------------------------------------------------------------

var t;
t=10;
t='asda';
dynamic p = 10;






}
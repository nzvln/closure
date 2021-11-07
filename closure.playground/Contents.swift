import UIKit

var greeting = "Hello, playground"

/* Задание 1
 1)Напишите замыкание, которое производит вывод на консоль сообщения "Hello, World!".
 2)Вызовите данное замыкание
 3)Какой тип данных у данного замыкания?*/
var hello = {print("Hello, Word!")}
hello()
type(of: hello)

/* Задание 2
 Из представленных ниже функциональных типов укажите те, которые указывают на то:
 
 1) что функция/замыкание не принимает входных аргументов и ничего не возвращает
 2) что функция принимает один входной аргумент
 3) что функция возвращает значение

 () -> (:)
 (_) -> ()
 (Int) -> () -> () - функция принимает один входной аргумент, функция возвращает значение
 () -> Void     - функция/замыкание не принимает входных аргументов и ничего не возвращает
 () -> (String) - функция возвращает значение
 () -> ()       - функция/замыкание не принимает входных аргументов и ничего не возвращает
 */

/* Задание 3
 1) Напишите замыкание, которое принимает на вход параметр типа String и выводит его значение на консоль.
 2) Вызовите данное замыкание
 3) Какой тип данных у данного замыкания?*/
var printClosure: (String) -> Void = { text in
    print(text)
}
printClosure("Надежда")
type(of: printClosure)

/* Задание 4
 1) Напишите замыкание, которое принимает на вход два целочисленных параметра и возвращает их сумму.
 2) Протестируйте работу данного замыкания
 3) Какой тип данных будет у данного замыкания?*/
let closureSum: (Int,Int) -> Int = { $0 + $1}
closureSum(2,3)
type(of: closureSum)


/* Задание 5
 Каким образом можно упростить данное замыкание?
 let someClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
     return a * b
 }
 */
let someClosure: (Int, Int) -> Int = {$0*$1}
someClosure(5,6)

/* Задание 6
 1) Напишите замыкание типа (Int, Int) -> Int, которое высчитывает разность двух переданных ему чисел.
 2) Напишите функцию, которая принимает на вход два целочисленных параметра, а так же замыкание типа (Int, Int) -> Int. Данное замыкание (третий аргумент функции) должно определять операцию, которая будет производиться в теле функции.
 3) Вызовите данную функцию и передайте ей два целых числа, а так же написанное в шаге 1 замыкание.
 4) Вызовите данную функцию и передайте ей два целых числа, а так же замыкание, производящее умножение данных чисел. Причем замыкание должно передаваться не через промежуточный параметр-хранилище, а непосредственно в качестве аргумента
 */
var num = {(a: Int, b: Int) -> Int in
    a - b
}
func someNum(a:  Int, b: Int, closure: (Int, Int) -> Int) -> Int {
   return closure(a,b)
}
someNum(a: 3, b: 2, closure: num)
someNum(a: 3, b: 2, closure: *)

/* Задание 7
 Вам дан массив целочисленных значений
 let arrayOfInt = [2,55,1,2,77,24,1,2]
 Отсортируйте его элементы по убыванию и выведите на консоль */
let arrayOfInt = [2,55,1,2,77,24,1,2]
print(arrayOfInt.sorted(by: <))

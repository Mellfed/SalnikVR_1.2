/*:
 ## Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте им следующие значения: 3.14 и 42.0
 
 1.2 Присвойте результат сложения ваших свойств новому свойству с типом `Double`
 
 1.3 Выведите результат на консоль. Обратите внимание на значение результата.
 */
let firstNumber: Float = 3.14
let secondNumber: Float = 42.0

let sum = Double(firstNumber + secondNumber)

print(sum)
/*:
 ## Задание 2
 2.1 Создайте свойство `numberOne` и присвойте ему любое положительное целочисленное значение
 
 2.2 Создайте свойство `numberTwo` и присвойте ему любое положительное значение меньше `numberOne`
 
 2.3 Создайте свойство `result` и присвойте ему результат деления `numberOne` на `numberTwo`
 
 2.4 Создайте свойство `remainder` и присвойте ему остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль фразу: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль еще одну фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». В математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (здесь мы используем стандартную математическую запись в тексте, а не оператор деления). На консоль необходимо вывести именно такой результат в виде натуральной дроби. Пример: «Результат деления 7 на 3 равен 2 1/3».
 
 */
let numberOne = 11

let numberTwo = 3

let result = numberOne / numberTwo

let remainder = numberOne % numberTwo

print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")

print("Результат деления \(numberOne) на \(numberTwo) равен 3 2/3")


/*: Или можно так, не понимаю тут есть подвох или нет))*/
let resultInFraction = "3 2/3"

print("Результат деления \(numberOne) на \(numberTwo) равен  \(resultInFraction)")
/*:
 ## Задание 3
 3.1 Объявите свойство `dayOfBirth` и присвоейте ему дату вашего рождения
 
 3.2 Объявите свойство `monthOfBirth` и присвоейте ему месяц вашего рождения
 
 3.3 Объявите свойство `yearOfBirth` и присвоейте ему год вашего рождения*/
let dayOfBirth = 11
let monthOfBirth = 1
let yearOfBirth = 2000
/*:3.4 Необходимо рассчитать прожитое время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, в месяцах, в днях и в секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30, а количество дней в году 360. Создайте все необходимые свойста, которые вам понадобятся для решения данной задачи. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций и условных операторов if-else использовать не нужно.
 
 3.5 Выведите результат вычислений на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Пример: если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**.*/
let dayToday = 16
let monthToday = 4
let yearToday = 2021

let daysInMonth = 30
let daysInYear = 360
let secondsInMinute = 60
let minutеsInHour = 60
let monthInYear = 12
let hoursInDay = 24

let daysAlive = ((((yearToday - yearOfBirth) * monthInYear) * daysInMonth) - (monthOfBirth * daysInMonth) + (daysInMonth - dayOfBirth)) + (((monthToday - 1) * daysInMonth) + dayToday)

let monthsAlive = daysAlive / daysInMonth

let yearsAlive = monthsAlive / 12

let hoursAlive = daysAlive * hoursInDay

let minutesAlive = hoursAlive * minutеsInHour

let secondsAlive = minutesAlive * secondsInMinute

print("\(yearsAlive) years, \(monthsAlive) months, \(daysAlive) days and \(secondsAlive) seconds have passed since my birth")
/*:3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте условный оператор if
 */
if monthOfBirth <= 3 {
    print("My Happy Birthday in first quarter")
} else if monthOfBirth <= 6 && monthOfBirth > 3 {
    print("My Happy Birthday in second quarter")
} else if monthOfBirth <= 9 && monthOfBirth > 6 {
    print("My Happy Birthday in third quarter")
} else {
    print("My Happy Birthday in fourth quarter")
}

/*:
 ### Задание 4
 Задание на вашу способность гуглить. Необходимо вычислить синус от числа 1 и округлить результат до тысячных. Для получания результата радианы искать не надо. Достаточно найти нужную функцию и она все сделает за вас.
 > Подсказка: в результате должно получиться 0.841
 */
import Foundation

let sinus = sin(1.0)

let roundedValue = (sinus * 1000).rounded(.toNearestOrEven) / 1000

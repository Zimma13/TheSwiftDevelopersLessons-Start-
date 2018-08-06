//: Playground - noun: a place where people can play

import UIKit

var myArray = [3,4,10,15,0,6]

var summ = 0

for i in myArray {
    summ += i
}

print(summ)


var dayOfMonth = [31, 28, 30, 31, 30, 31, 30, 31, 30, 31, 30, 31]

for i in dayOfMonth {
    print(i)
}

var nameOfMonth = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for (item, _) in nameOfMonth.enumerated() {
    print("В месяце \(item) - \(dayOfMonth[item])")
}

var monthAndDay = [("Январь",  31), ("Февраль", 29), ("Март", 30), ("Апрель", 31), ("Май", 30), ("Июнь", 31), ("Июль", 30), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for i in monthAndDay {
    print("В месяце \(i.0) - \(i.1)")
}



var birthDay = ("Декабрь", 31)
var day = 0

for i in monthAndDay {
    if i.0 == birthDay.0 {
        print(day + birthDay.1)
    } else {
        day += i.1
    }
}

var myStr = "Привет! Как дела? Что нового? Сколько осталось учиться? 3 года, а может 10 лет?"
var glas = 0
var soGlas = 0
var enother = 0
var allChar = 0


for i in myStr {
    allChar += 1
    switch i {
    case "а", "у", "о", "ы", "и", "э", "я", "ю", "е":
        glas += 1
    case "б", "в", "г", "д", "ж", "з", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ":
        soGlas += 1
    default:
        enother += 1
    }
}

print("В строке myStr: \(glas) - гласных, \(soGlas) - согласных, \(enother) - осталных символов. Всего символов \(glas + soGlas + enother)")


var age = 5

switch age {
case 0...16:
    print("Детсво")
case 17...50:
    print("Молодость")
case 51...100:
    print("Старость")
default:
    break
}

var name = "Дмитрий" //начинается с А или с О - обращаемся по имени
var secondName = "Владимирович" //начинается с буквы В или буквы Д - по имени отчеству
var ogName = "Степанов" //Начинается с буквы Е или З - по фамилии



switch (name, secondName, ogName) {
case (name, _, _) where name.prefix(1) == "А" || name.prefix(1) == "О":
    print("Добрый день \(name)")
case (_, secondName, _) where secondName.prefix(1) == "В" || secondName.prefix(1) == "Д":
    print("Добрый день \(name) \(secondName )")
default:
    print("Добрый день \(ogName) \(name) \(secondName)")
}


var type = 1
var value = 3

if (type == nil) || (value == type) {
    
}












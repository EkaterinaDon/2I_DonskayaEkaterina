import Foundation


//1. Написать функцию, которая определяет, четное число или нет.
func getEven(num: Int) {
    if num % 2 == 0 {
        print("Четное")
    } else {
        print("Нечетное")
    }
}

getEven(num: 30)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3. (Вернуть Bool)
func ifDivide(num: Int) -> Bool {
    if num % 3 == 0 {
        print("число делится на 3 без остатка")
        return true
    } else {
        print("число делится на 3 с остатком")
        return false
    }
}

ifDivide(num: 9)


//3. Создать возрастающий массив из 100 чисел.

var array: [Int] = []
for i in 0...99 {
    array.append(i)
}
print(array)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for (_, value) in array.enumerated() {
    if (value % 2 == 0) || (value % 3 > 0) {
        array.remove(at: array.firstIndex(of: value)!)
    }
}
print(array)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func addFibonacci(n: Int) -> [Double] {
    var fib: [Double] = [0, 1]

    while fib.count < n {
        fib.append(fib[fib.count - 1] + fib[fib.count - 2])
    }
        return fib
}
print(addFibonacci(n:98))



//6. * Заполнить массив из 100 элементов различными простыми числами.

let maxPrime = 1000
var primeNumbers: [Int] = []
var midNumber = 0

loop: for num in 2...maxPrime {
    midNumber = num / 2
    for subNum in primeNumbers {
        if subNum > midNumber {
            break
        }
        if num % subNum == 0 {
            continue loop
        }
    }
    primeNumbers.append(num)
    if primeNumbers.count == 100 {
        break
    }
}

print(primeNumbers)



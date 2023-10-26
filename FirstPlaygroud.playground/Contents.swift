import UIKit
// 1) Podstawowe zmienne i komentarze
// komentarz jednoliniowy
/*
komentarz wielolinijkowy
 2 linia
 3 linia
 4 linia
*/

var str = "My Playground"
var rok = 2021
str = "Player"
//str = 123         //bład bo zmiana typu
//rok = "2020"      //bład bo zmiana typu

var liczba:Int = 5 //-deklaracja z typem
var zmiennaTekstowa:String = "tekst"

//var ulamek:Int = 3.5  // Błąd typu
var liczbaCalkowita:Double = 3.5

var falsz:Bool = true

var znak:Character = "5"
var liczba_5:Character = "5"

var newline:Character = "\n"

// 2 Podstawowe fubkcje i typy zmiennych

var liczbaTestowa:Double = 6.8
liczbaTestowa.isZero               // Sprawdzanie czy zero

var zeroNum:Double = 0
var notZeroNum:Double = 6
zeroNum.isZero // True
notZeroNum.isZero // False

zeroNum.isNaN
notZeroNum.isNaN//Sprawdza czy jest liczbą
notZeroNum.isEqual(to: 5)
notZeroNum.isEqual(to: 6) // Sprawdza czy równa liczbie w argumencie

var emptyString:String=""
var notEmptyString:String = "String"
emptyString.isEmpty
notEmptyString.isEmpty    // sprawdzenie czy string jest pusty

notEmptyString = "StRiNg"
notEmptyString.lowercased()
notEmptyString.uppercased()

notEmptyString.count  //zwraca długosć stringa

notEmptyString.removeFirst() //Zwraca usunięty
notEmptyString.removeLast() //Zwraca usunięty
notEmptyString

notEmptyString.removeAll() // czyści string ""

var jakisString:String = " Text"
notEmptyString.append(contentsOf: "Dodanie")
notEmptyString.append(contentsOf: jakisString)
notEmptyString.append(jakisString)

//f-cje dla character
var newCharacter:Character = "t"
var newLine:Character = "\n"

newCharacter.isNewline
newCharacter.isLetter
newCharacter.isNumber
newCharacter.isWhitespace

newLine.isNewline
newLine.isLetter
newLine.isNumber
newLine.isWhitespace

//  4)  Stałe
var liczbaStron:Int = 23
liczbaStron
liczbaStron = 45
liczbaStron

let newLet:String = "let"
//newLet.removeFirst()
//newLet.removeLast() // 2 błędy bo modyfikujemy stałą

// 5)  Operatory
var zmiennaPrzykladowa = 6 // operator przypisania
// [+,-,*,/]
var varOne:Int = 5
var varTwo:Int = 7
var varThree:Int = 13
varOne + varTwo
varThree - varOne - varTwo
varOne * varTwo
varThree / varTwo // wynik!

var varFour:Double = 7
var varFive:Double = 3
varFour / varFive
round(varFour / varFive)
round(1000*(varFour / varFive))/1000


var stringOne:String = "zmienna"
var stringTwo:String = "zmienna_2"
var stringThree:String = stringOne + stringTwo
stringThree = stringOne + " " + stringTwo

//  % - modulo
var num = 9 % 4
var numTwo = 8 % 2

//operatory porównania
// != > < >= <= ==

var newNum:Int = 5
var newNumSecond:Int = 5
var newNumDiff:Int = 7

newNum == newNumSecond
newNum > newNumDiff
newNum < newNumSecond
newNum >= newNumDiff
newNum <= newNumSecond
newNum != newNumDiff

//porównywanie string
var myStr:String = "First"
var myStrB: String = "Second"

myStr == myStrB

// and (&&), or (||)

var lof = true
var fol = false

lof && fol
lof || fol

//+= -= *= /=

var firstNum:Int = 5
var secondNum:Int = 7
firstNum += 1
secondNum -= 4

firstNum = 3
secondNum = 9
firstNum *= secondNum
firstNum /= secondNum

//  6) Tablice

/*
 [1  4  5  2]
 [0][1][2][3]
 */
var arr = [1,4,5,2]
arr[1]
//arr[4] // error - wykroczenie po za zakres
arr[1] - arr[0]
arr[2] * arr[1]
arr[1] / arr[3]
//tablica typowana
var intArr:[Int] = [1,2,3,4]
var strArr:[String] = ["first","second","Third"]
intArr.append(5)  //dodanie elementu do tablicy
intArr+=[3]   //jak append
intArr.insert(6, at: 2) // wstawianie w imijscu
//zmiany w tablicy
intArr[2] = 77
intArr
intArr.replaceSubrange(0...2, with: [32,46,67] )
//usuwanie elemntow
intArr.removeFirst()
intArr.removeLast()
intArr
intArr.remove(at: 3)
intArr
intArr.removeSubrange(0...1)
intArr
intArr.removeAll()
intArr

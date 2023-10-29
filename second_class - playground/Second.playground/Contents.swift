import UIKit
//1)Słowniki  - tablice asjocacyjne
var capitalDic:[String:String] = [:]
var foodDic:Dictionary<String,Int> = [:]
var gradeDic = ["M":5, "WF":4]

gradeDic["M"]
gradeDic["WF"]

//dodawanie do slownika
capitalDic["Polska"] = "Warszawa"
capitalDic["Niemcy"] = "Berlin"
capitalDic

foodDic["ŚniadanieKcl"] = 700
foodDic["ObiadKcl"] = 900
foodDic["KolacjaKcl"] = 700
foodDic

//edycja
foodDic["ŚniadanieKcl"] = 1200
foodDic
//usuwanie
foodDic.removeValue(forKey: "KolacjaKcl")
foodDic

foodDic["ŚniadanieKcl"] = nil
foodDic




//2)Instrukcje warunkowe
var distance = 1

if distance == 10 {
    print("Bieg na 10km")
}
else {
    print("warunek nie został wykonany")
}

//warunki logiczne && oraz ||
var prof = "Runner"
if distance == 10 && prof == "Runner"
{
    print("Bieg na 10km")
}
else
{
    print("warunek nie został wykonany")
}

var distance2 = 3
if distance2 == 5 || distance2 < 10
{
    print("Bieg na 5km")
}
else if distance2 == 10
{
    print("Bieg na 10km")
}
else if distance2 == 15
{
    print("Bieg na 15km")
}
else
{
    print("brak wyboru")
}


var distance3 = 5
if distance3 == 5
{
    print("Bieg na 5km")
}
else if distance3 == 10
{
    print("Bieg na 10km")
}
else if distance3 == 15
{
    print("Bieg na 15km")
}
else
{
    print("brak wyboru")
}



//Pętla for
for _ in 1...100{// 1..5
    print("Hello world")//wypisz 100 razy
}

//////////////
var arrToLoop = [0,1,3,2,4]

for num in arrToLoop
{
    print(num)
}

let score2 = ["Adam":123, "Henryk":98, "Mariola":51]

for (name, score) in score2
{
    print("\(name)! zdobył/a \(score) punktów")
}


//Pętla while
var lista:Int = 1

while  lista <= 5 //najpierw sprawdza warunek
{
    print("To jest lista")
    lista += 1
}
//warunek sprawdzany na końcu minimalnie jedno wykonanie
lista = 1

repeat
{
    print("To jest lista")
    lista+=1
} while( lista <= 5)

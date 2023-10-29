import UIKit

//Zadanie 1 - napisz warunek czy liczba jest parzysta

var a = 2

    if(a%2==0)
    {
        print("Parzysta")
    }
    else
    {
        print("Nieprarzysta")
    }
    

var arr = [0,1,3,2,4,9,6,5,7,8]
//Zadanie 2 - wypisz zmienne gdy wieksze od 2
//zadanie 3 - zsumuj liczby z tablicy
var suma = 0

for cell in arr {
    // look at data
    if(cell>2)
    {
        print(cell)
    }
    suma+=cell
}
print("Suma",suma)

var lancuch:String = "lancuch"
//zadanie 4 - wypisz posczególne znaki ze słowa "lancuch"


for i in lancuch
{
    print(i)
}
//Zadanie 5 - stwórz słownik zawaierajacy ceny częsic samochodowych (elementów) i wypisz nazwe klucza i cenę

let hurt = ["Rozrzad":1233, "Uszczelka_passat":98, "Płyn do spryskiwaczt":51]

for (name, cena) in hurt
{
    print("Część \(name) kosztuje \(cena) plnów")
}

import Foundation

/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
*/

struct ConditionsPrime {
    init(num : Int) {
        self.num = num
    }
    func biggerThan1() -> Bool{
        return self.num > 1
    }

    func isDivisible() -> Bool{
        for i in 2...Int(sqrt(Double(self.num))) {
            if self.num % i == 0 {
                return false
            }
        }
        return true
    }
}

func isPrime(num: Int) -> Bool{
    var conditions = ConditionsPrime(num: num)
    return conditions.biggerThan1() && conditions.isDivisible()
}

for i in (1...100) {
    if isPrime(num : i) {print(i)}  
}
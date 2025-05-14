import Foundation   

/*
 * Reto #7
 * CONTANDO PALABRAS
 * Fecha publicación enunciado: 14/02/22
 * Fecha publicación resolución: 21/02/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

let frase = "Hola que tal, ¿la frase hola mundo fue la primera que se compiló en un programa web?. No lo sé, habría que investigarlo"
let fraseMin = frase.lowercased()
let fraseLimpia = fraseMin.filter { !$0.isPunctuation }
let palabras = fraseLimpia.split(separator: " ")
var palabrasUsadas: [String] = []

for palabra in palabras {   
    var contador = 0
    if !palabrasUsadas.contains(String(palabra)) {
        palabrasUsadas.append(String(palabra))       
        for palabra2 in palabras{
            if palabra == palabra2{
                contador += 1
            } 
        }
        print("\(palabra) sale \(String(contador)) veces")
    }
}

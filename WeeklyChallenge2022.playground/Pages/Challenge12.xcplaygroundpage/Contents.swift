import Foundation

/*
 * Reto #12
 * ¿ES UN PALÍNDROMO?
 * Fecha publicación enunciado: 21/03/22
 * Fecha publicación resolución: 28/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
 * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
 * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 * Ejemplo: Ana lleva al oso la avellana.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func checkPalindromeWords(words: [String]) {
    for word in words {
        print("Word: \(word), Bool: \(isPalindrome(word: word))")
    }
}

func splitWords(text: String) -> [String] {
    let textWithoutAccent = text.folding(options: .diacriticInsensitive, locale: .current)
    let cleanText = textWithoutAccent.components(separatedBy: CharacterSet.punctuationCharacters.union(.symbols)).joined()
    let words = cleanText.components(separatedBy: " ")
    return words
}

func isPalindrome(word: String) -> Bool {
    let reverseWord = String(word.reversed())
    return word == reverseWord
}

let text = "Hola ana, qué tal cómo estamos hoy. Espero que todo vaya bien! cuidado con el oso que aunque no tenga ala puede volar"
//checkPalindromeWords(words: splitWords(text: text))

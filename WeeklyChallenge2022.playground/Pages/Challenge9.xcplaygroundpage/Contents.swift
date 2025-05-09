import Foundation

/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func makeAlphabetList() -> [String] {
    let strAlphabet = "abcdefghijklmnopqrstuvwxyz "
    var arrayAlphabet: [String] = []
    for letter in strAlphabet {
        arrayAlphabet.append(String(letter))
    }
    return arrayAlphabet
}

func decoder(str: String) -> String { 
    let alphabet = makeAlphabetList()
    let alphabetMorse = [
        ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..", "  "
    ]
    
    var result = ""
    for letter in str {
        if let index = alphabet.firstIndex(of: String(letter)) {
            result += alphabetMorse[index] + " "
        }
    }
    return result
}

print(decoder(str: "hola mundo"))

// Otra forma de hacerlo 

func decorderV2(str: String) -> String {
    let alphabetMorse: [Character: String] = [
        "a": ".-",
        "b": "-...",
        "c": "-.-.",
        "d": "-..",
        "e": ".",
        "f": "..-.",
        "g": "--.",
        "h": "....",
        "i": "..",
        "j": ".---",
        "k": "-.-",
        "l": ".-..",
        "m": "--",
        "n": "-.",
        "o": "---",
        "p": ".--.",
        "q": "--.-",
        "r": ".-.",
        "s": "...",
        "t": "-",
        "u": "..-",
        "v": "...-",
        "w": ".--",
        "x": "-..-",
        "y": "-.--",
        "z": "--.."
    ]

    var result = ""
    for letter in str {
        if let morseLetter = alphabetMorse[letter] {
            result += "\(morseLetter) "
        }
    }
    return result
}

print(decorderV2(str: "hola mundo"))
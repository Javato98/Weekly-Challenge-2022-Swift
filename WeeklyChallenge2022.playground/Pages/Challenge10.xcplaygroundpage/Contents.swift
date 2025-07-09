import Foundation

/*
 * Reto #10
 * EXPRESIONES EQUILIBRADAS
 * Fecha publicación enunciado: 07/03/22
 * Fecha publicación resolución: 14/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.
 * - Equilibrado significa que estos delimitadores se abren y cieran en orden y de forma correcta.
 * - Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
 * - Expresión balanceada: { [ a * ( c + d ) ] - 5 }
 * - Expresión no balanceada: { a * ( c + d ) ] - 5 }
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func isBalanced(expression: String) -> Bool {
    let symbols = ["{":"}", "[":"]", "(":")"]
    var stack = [String]()
    
    for character in expression {
        let symbol = character.description
        let containsKey = symbols.keys.contains(symbol)
        let containsValue = symbols.values.contains(symbol)
        
        if containsKey || containsValue {
            if containsKey {
                stack.append(symbol)
            } else if stack.isEmpty {
                return false
            } else if let lastSymbol = stack.popLast(), symbol != symbols[lastSymbol] {
                return false
            }
        }
    }
    return stack.isEmpty
}

//print(isBalanced(expression: "{a + b [c] * (2x2)}}}}"))
//print(isBalanced(expression: "{ [ a * ( c + d ) ] - 5 }"))
//print(isBalanced(expression: "{ a * ( c + d ) ] - 5 }"))
//print(isBalanced(expression: "{a^4 + (((ax4)}"))
//print(isBalanced(expression: "{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }"))
//print(isBalanced(expression: "{{{{{{(}}}}}}"))
//print(isBalanced(expression: "(a"))

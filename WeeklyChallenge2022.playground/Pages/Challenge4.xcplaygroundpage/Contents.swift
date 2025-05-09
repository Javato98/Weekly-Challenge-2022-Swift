

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

protocol Polygon {
    func area() -> Double
    func printArea()   
}

struct Triangle : Polygon {
    let base, height : Double

    init(base: Double, height : Double) {
        self.base = base
        self.height = height
    }
    

    func area() -> Double {
        return (base * height) / 2
    }

    func printArea() {
        print("El aéra del triángulo es de \(area())")
    }
}

struct Rectangle : Polygon {
    let base, height : Double

    init(base: Double, height : Double) {
        self.base = base
        self.height = height
    }

    func area() -> Double {
        return base * height
    }

     func printArea() {
        print("El área del rectágulo es de \(area())")
     }   
}

struct Square : Polygon {
    let side : Double

    init(side: Double) {
        self.side = side
    }

    func area() -> Double {
        return side * side
    }

    func printArea() {
        print("El área del cuadrado es de \(area())")
    }
}

func area(polygon: Polygon) -> Double {
    polygon.printArea()
    return polygon.area()
}

var triangle = Triangle(base: 3, height: 4)
print(area(polygon: triangle))          
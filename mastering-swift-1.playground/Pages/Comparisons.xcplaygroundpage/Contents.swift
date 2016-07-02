/*:
 ### Comparisons
 Lesson 1 - Swift Review
 * Associative types and recursive enums
 * Option sets
 * guard
 * if-case and for-case
 * Availability checking
 */
// enums
enum Color {
    case Black
    case Rgb(Int, Int, Int)
    case Hex(String)
}

enum Either<T,U> {
    case Left(T)
    case Right(U)
}

// recursive enum

enum Tree {
    case Empty
    indirect case Node(value: Int, left: Tree, right: Tree)
}

let tree1 = Tree.Node(value: 0, left: Tree.Empty, right: Tree.Empty)

// option set
struct WaveformOptions : OptionSetType {
    let rawValue: Int
    init(rawValue: Int) { self.rawValue = rawValue }
    
    static let Pulse    = WaveformOptions(rawValue: 1)
    static let Square   = WaveformOptions(rawValue: 2)
    static let Sine     = WaveformOptions(rawValue: 4)
    static let Triangle = WaveformOptions(rawValue: 8)
}

let options : WaveformOptions = [ .Pulse, .Square, .Sine ]
print (options)

// pattern match

let z = [Color.Black, Color.Rgb(0, 160, 190), Color.Hex("#f4f4f4"), Color.Black, Color.Hex("#733c77"), Color.Rgb(120, 109, 196)]

// if-case
let s = Color.Hex("#F00000")

if case Color.Hex(let a) = s {
    print ("The number is \(a)")
}

// for-case
for case let Color.Rgb(a,b,c) in z {
    print ("a is \(a)")
}

for case let Color.Rgb(a,b,c) in z where a < 10 {
    print("The rgb value is \(a), \(b), \(c) ")
}

// availability

if #available(iOS 9.3, *) {
    print ("api works on iOS 9.3")
} else {
    print ("fallback on earlier API")
}

// extensions

// type-extensions

extension CollectionType {
    func explode {}
}

// do scope

do {
    var greeting = "hello"
}

//print(greeting)



import UIKit

// MARK: - Task 1 - Classes + Initialization
// 1. Создайте 3 любых класса и реализуйте в них инициализаторы разного типа

class Dog {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Car {
    let type: String = "automobile"
    var speed: Int
    var power: Int
    var countSits: Int?
    var countWeels: Int?
    
    init(speed: Int, power: Int) {
        self.speed = speed
        self.power = power
    }
}

class Smartphone {
    var brand: String = "Samsung"
    var model: String = "A72018"
    var hdd: Int = 64
    var memory: Int = 4096
}


// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

struct Student {
    var name: String
    var surname: String
    var year: Int
    var averageMark: Double
}
let student1: Student = Student(name: "Алексей", surname: "Петров", year: 1995, averageMark: 8.7)
let student2: Student = Student(name: "Иван", surname: "Кузнецов", year: 1993, averageMark: 8.3)
let student3: Student = Student(name: "Олег", surname: "Петров", year: 1990, averageMark: 7.3)
let student4: Student = Student(name: "Илья", surname: "Сидоров", year: 1991, averageMark: 6.0)
let student5: Student = Student(name: "Геннадий", surname: "Павлов", year: 1992, averageMark: 9.1)

var journal: [Student] = []
journal.append(student1)
journal.append(student2)
journal.append(student3)
journal.append(student4)
journal.append(student5)

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

func getJournal(for journal: [Student]) {
    for (i, v) in journal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getJournal(for: journal)
print("-------------")

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

func getSortByMark(for journal: [Student]) {
    let newJournal = journal.sorted{$0.averageMark > $1.averageMark}
    for (i, v) in newJournal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getSortByMark(for: journal)
print("-------------")

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

func getSortByName(for journal: [Student]) {
    let newJournal = journal.sorted{
        $0.surname == $1.surname ? $0.name < $1.name : $0.surname < $1.surname}
    for (i, v) in newJournal.enumerated() {
        print("\(i + 1) - \(v)")
    }
}
getSortByName(for: journal)

print("-------------")

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.

var newJournal: [Student] = journal
newJournal[0].name = "John"
newJournal[1].name = "Gogy"
newJournal[2].name = "Josef"
newJournal[3].name = "Helga"
newJournal[4].name = "Helena"


for (i, v) in newJournal.enumerated() {
    print("\(i + 1) - \(v)")
}
print("-------------")

for (i, v) in journal.enumerated() {
    print("\(i + 1) - \(v)")
}



// MARK: - Task 3 - Classes
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте класс Студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

class NewStudent {
    var name: String
    var surname: String
    var year: Int
    var averageMark: Double
    
    init(name: String, surname: String, year: Int, averageMark: Double) {
        self.name = name
        self.surname = surname
        self.year = year
        self.averageMark = averageMark
    }
}


let newStudent1: NewStudent = NewStudent(name: "Алексей", surname: "Петров", year: 1991, averageMark: 9.0)
let newStudent2: NewStudent = NewStudent(name: "Иван", surname: "Кузнецов", year: 1993, averageMark: 8.3)
let newStudent3: NewStudent = NewStudent(name: "Олег", surname: "Петров", year: 1990, averageMark: 7.3)
let newStudent4: NewStudent = NewStudent(name: "Илья", surname: "Сидоров", year: 1991, averageMark: 6.0)
let newStudent5: NewStudent = NewStudent(name: "Геннадий", surname: "Павлов", year: 1992, averageMark: 9.1)

var classJournal: [NewStudent] = []
classJournal.append(newStudent1)
classJournal.append(newStudent2)
classJournal.append(newStudent3)
classJournal.append(newStudent4)
classJournal.append(newStudent5)
print("-------------")


// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

func getClassJournal(for journal: [NewStudent]) {
    for (i, v) in classJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getClassJournal(for: classJournal)
print("-------------")

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

func getSortClassByMark(for journal: [NewStudent]) {
    let newJournal = journal.sorted{$0.averageMark > $1.averageMark}
    for (i, v) in newJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getSortClassByMark(for: classJournal)
print("-------------")

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

func getSortClassByName(for journal: [NewStudent]) {
    let newJournal = journal.sorted{
        $0.surname == $1.surname ? $0.name < $1.name : $0.surname < $1.surname}
    for (i, v) in newJournal.enumerated() {
        print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
    }
}
getSortClassByName(for: classJournal)

print("-------------")

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

var newClassJournal: [NewStudent] = classJournal
newClassJournal[0].name = "Alex"
newClassJournal[1].name = "Bred"
newClassJournal[2].name = "Hope"
newClassJournal[3].name = "Trevis"
newClassJournal[4].name = "Helga"

for (i, v) in newClassJournal.enumerated() {
    print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
}

print("-------------")


for (i, v) in classJournal.enumerated() {
    print("№\(i + 1) - имя: \(v.name), фамилия: \(v.surname), г.р.: \(v.year), средний балл: \(v.averageMark)")
}



// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?
// При изменении структуры, меняются данные в одном журнале. Обусловлено тем что структуры это значимый тим (value type) и при
// создании нового объекта создается копия и новая ячейка хранения данных. В классах все иначе, там при изменении одного журнала меняется
// и второй, так как это ссылочный тип, и при создании второго журнала мы сделали не копию со своей отдельной памятью, а просто ссылку.

// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?
// Структуры сохраняют свои значения, поэтому использовать их нужно в том случае, когда эти значения нам важны, а каопий может быть много.
// Классы в свою очередь меняют свои значения если изменить хотя бы в одном объекте. Следовательно использовать нужно в том случае если мы
// уверены что объектов больше не будет, либо данные нам не важны, либо нам необходимы такие плаваящие данные, изменяюшиеся у всех при
// изменении у одного.


// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)

struct StudentTask4 {
    var day: Int = 12
    var month: String = "April"
    var year: Int = 2000
    var name: String = "Artem"
    var surname: String = "Ivanov"
    
    var age: Int {                          // Вычисляем возраст студента
        return 2020 - year
    }
    var howMach: Int {                      // Вычисляем сколько лет учился
        if age > 6 {
            return age - 6
        } else {
            return 0
        }
    }
}
var myStud: StudentTask4 = StudentTask4()
myStud.age
myStud.howMach


// MARK: - Task 5 - Properties
// 1. Создайте класс Человек, который будет содержать имя, фамилию, возраст, рост и вес.
// 2. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
// - минимальный и максимальный возраст каждого объекта
// - минимальную и максимальную длину имени и фамилии
// - минимально возможный рост и вес
// - создайте свойство, которое будет содержать количество созданных объектов этого класса

private class Human {
    private var _name: String
    private var _surname: String
    private var _age: Int
    private var _height: Int
    private var _weight: Int
    
    static var count: Int = 0
    
    var weight: Int {                                                  // Минимальный вес
        get {
            return self._weight
        }
        set {
            if newValue > 60 {
                self._weight = newValue
            }
        }
    }
    
    var height: Int {                                                  // Минимальный рост
        get {
            return self._height
        }
        set {
            if newValue > 165 {
                self._height = newValue
            }
        }
    }
    
    var surname: String {                                               // Минимальная и максимальная длина фамилии
        get {
            return self._surname
        }
        set {
            if newValue.count < 7 && newValue.count > 3 {
                self._surname = newValue
            }
        }
    }
    
    var name: String {                                                  // Минимальная и максимальная длина имени
        get {
            return self._name
        }
        set {
            if newValue.count < 7 && newValue.count > 2 {
                self._name = newValue
            }
        }
    }
    
    var age: Int {                                                      // Минимальный и максимальный возраст
        get {
            return self._age
        }
        set {
            if newValue < 25 && newValue > 15 {
                self._age = newValue
            }
        }
    }
    
    init(name: String, surname: String, age: Int, height: Int, weight: Int) {
        self._name = name
        self._surname = surname
        self._age = age
        self._height = height
        self._weight = weight
        Human.count += 1
    }
}


// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

private class Cat {
    // MARK: - обычные свойства
    var age: Int
    
    // MARK: - свойства только для чтения
    private(set) var voice: String
    private(set) var _name: String
    
    // MARK: - инициализатор
    init(age: Int, voice: String, name: String) {
        self.age = age
        self.voice = voice
        self._name = name
    }
    
    // MARK: - методы
    func scream() {
        print(voice)
    }
    
    func setName(with name: String) {
        self._name = name
    }
}

private class RedCat: Cat {
    var color: String
    var gender: String
    var size: Int
    
    init(color: String, gender: String, size: Int, age: Int, voice: String, name: String = "Reddy") {
        self.color = color
        self.gender = gender
        self.size = size
        super.init(age: age, voice: voice, name: name)
    }
}
private class BlackCat: Cat {
    var color: String
    var gender: String
    var size: Int
    
    init(color: String, gender: String, size: Int, age: Int, voice: String, name: String = "Blacky") {
        self.color = color
        self.gender = gender
        self.size = size
        super.init(age: age, voice: voice, name: name)
    }
}


// MARK: - Task 7 - Overriding
// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет


// MARK: - Родительский класс
class GeometricFigure {
    var colorOfFigure: String = "Color"
    
    var description: String {
        return "Подсчет площади фигуры по известным данным"
    }
    
    func figureArea() { }
}

// MARK: - Класс круг
class Circle: GeometricFigure {
    var radius: Double
    
    override var description: String {
        return "Подсчет площади круга по радиусу:"
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func figureArea() {
        print((self.radius * self.radius) * 3.14)
    }
}

// MARK: - Класс квадрат
class Square: GeometricFigure {
    var side: Double
    
    override var description: String {
        return "Подсчет площади квадрата по стороне:"
    }
    
    init(side: Double) {
        self.side = side
    }
    
    override func figureArea() {
        print(self.side * self.side)
    }
}

// MARK: - Класс треугольник
class Triangle: GeometricFigure {
    var base: Double
    var height: Double
    
    override var description: String {
        return "Подсчет площади треугольника по основанию и высоте:"
    }
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    override func figureArea() {
        print((self.base * self.height) / 2)
    }
}

// MARK: - Класс трапеция
class Trapezoid: GeometricFigure {
    var height: Double
    var middleLineOfATrapezoid: Double
    
    override var description: String {
        return "Подсчет площади трапеции по высоте и средней линии:"
    }
    
    init(height: Double, middleLineOfATrapezoid: Double) {
        self.height = height
        self.middleLineOfATrapezoid = middleLineOfATrapezoid
    }
    
    override func figureArea() {
        print(self.height * self.middleLineOfATrapezoid)
    }
}

// MARK: - Класс ромб
class Rhombus: GeometricFigure {
    var sideA: Double
    var sideB: Double
    
    override var description: String {
        return "Подсчет площади ромба по двум сторонам:"
    }
    
    init(sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
    }
    
    override func figureArea() {
        print(self.sideA * self.sideB)
    }
}

let circle: Circle = Circle(radius: 2.3)
print(circle.description)
circle.figureArea()

let square: Square = Square(side: 4.2)
print(square.description)
square.figureArea()

let triangle: Triangle = Triangle(base: 4.3, height: 5.1)
print(triangle.description)
triangle.figureArea()

let trapezoid: Trapezoid = Trapezoid(height: 5.2, middleLineOfATrapezoid: 3)
print(trapezoid.description)
trapezoid.figureArea()

let rhombus: Rhombus = Rhombus(sideA: 2.1, sideB: 1.2)
print(rhombus.description)
rhombus.figureArea()

var arrayClass: [GeometricFigure] = [circle, square, triangle, trapezoid, rhombus]
for figure in arrayClass {
    if figure is Circle {
        figure.colorOfFigure = "Красный"
    } else if figure is Square {
        figure.colorOfFigure = "Зеленый"
    } else if figure is Triangle {
        figure.colorOfFigure = "Красный"
    } else if figure is Trapezoid {
        figure.colorOfFigure = "Зеленый"
    } else if figure is Rhombus {
        figure.colorOfFigure = "Красный"
    }
    print(figure.colorOfFigure)
}


// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."

extension Int {
    // MARK: - Свойства isPositive, isNegative
    var isNegative: Int {
        return self < 0 ? self : -self
    }
    var isPositive: Int {
        return self > 0 ? self : -self
    }
    
    // MARK: - Свойство по подсчету символов
    var countOfSymbols: Int {
        return String(self).count
    }
}

extension String {
    // MARK: - Метод по отсеканию последних символов
    func trimText(count: Int) -> String {
        return String(self.dropLast(count))
    }
    
    // MARK: - Метод по отсекание и замене последних символов
    func truncate(lenght: Int) -> String {
        var truncate: String = ""
        if self.count > lenght {
            truncate = self.dropLast(self.count - lenght) + "..."
        }
        return truncate
    }
}

// MARK: - Task 9 - Inheritance + Protocol
// 1. Создайте базовый класс «Артист», у которого должны быть:

/// `Свойства`
// - имя (структура) - разрешить только чтение
// - возраст - сделать проверку на положительное значение
// - страна работы (Беларусь, Россия, Украина, другое (enum associated value))
// - стаж работы
// - зарплата в неделю - артист может отказаться её озвучивать
// - зарплата за день - вычисляется на основе зарплаты в неделю после того, как было установлено новое значение
// - сколько процентов своей жизни работал артистом - computed property

/// `Инициализаторы`
// 2 разных инициализатора (имя в каждом инициализаторе - обязательно)

/// `Методы`
// статический метод, возвращающий возможные страны проживания артиста. сделать недоступным к переопределению
// статический метод, выводящий информацию о названии класса в консоль
// метод с информацией об артисте - выводит все свойства в читаемом виде. недоступен к переопределению
// метод «выступить», выводящий информацию об артисте, в каком жанре выступает и что показывает

// Создать классы «Музыкант», «Художник», «Танцор», наследующиеся от артиста.
// В каждом классе переопределить метод с информацией о классе.
// - Танцор отказывается выступать, если его зарплата за день меньше 100, о чем сообщает в консоли.
// - Художник не хочет использовать своё родное имя, заменяя его на сценическое, которое состоит из перемешанных букв родного имени.
// - Музыканты не хотят работать в Турции, уезжая в любую другую страну из списка доступных, а также у них появляется новый параметр - любимый инструмент.

// Создать по два экземпляра каждого класса (в том числе родителя) с различными данными, положив их в массив типа Артист.
// Пройтись по массиву и вызвать у каждого элемента метод выступить. Если в списке попался Танцор, то вывести его зарплату за день, если Музыкант, то отобразить любимый инструмент.

// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.




class Artist {
    // MARK: - Структурры, перечисления
    struct Name {
        var name: String
    }
    enum CountryOfWork {
        case belarus(_: String)
        case russia(_: String)
        case ukraine(_: String)
        case turkey(_: String)
        case other(_: String)
    }
    
    // MARK: - Свойства
    var coutryOfTrip: String
    var durationOfTrip: Int
    var genreOfArtist: String
    var yearOfBorn: Int
    var lengthOfWork: Int
    var salaryPerWeek: Int?
    private(set) var name: Name
    private(set) var coutryOfWork: CountryOfWork
    
    // MARK: - Вычисляемые свойства
    var salaryInBusinessTrip: Double {
        return self.salaryPerDay > 0 ? Double(self.salaryPerDay) * self.salaryCoefficient : Double(80 * self.salaryCoefficient)
    }
    var salaryCoefficient: Double {
        var coef: Double = 0
        if lengthOfWork <= 2, lengthOfWork >= 1 {
            coef = 1
        } else if lengthOfWork >= 3, lengthOfWork <= 5 {
            coef = 1.5
        } else if lengthOfWork > 5 {
            coef = 2
        }
        return coef
    }
    var age: Int {
        get {
            return 2020 - self.yearOfBorn
        }
        set{
            newValue > 0 ? newValue : -newValue
        }
    }
    var salaryPerDay: Int {
        return self.salaryPerWeek != nil ? self.salaryPerWeek! / 7 : 0
    }
    
    var percentOfLife: Int {
        return Int(Double(self.lengthOfWork) / Double(2020 - self.yearOfBorn) * 100)
    }
    
    // MARK: - Инициализаторы(полный, частичный)
    init(name: String,
         yearOfBorn: Int,
         countryOfWork: CountryOfWork,
         lengthOfWork: Int,
         salaryPerWeek: Int?,
         genreOfArtist: String,
         coutryOfTrip: String,
         durationOfTrip: Int) {
        self.name = Name(name: name)
        self.yearOfBorn = yearOfBorn
        self.coutryOfWork = countryOfWork
        self.lengthOfWork = lengthOfWork
        self.salaryPerWeek = salaryPerWeek
        self.genreOfArtist = genreOfArtist
        self.coutryOfTrip = coutryOfTrip
        self.durationOfTrip = durationOfTrip
    }
    init(name: String,
         lenthOfWork: Int,
         coutryOfWork: CountryOfWork,
         yearOfBorn: Int,
         genreOfArtist: String,
         durationOfTrip: Int,
         coutryOfTrip: String) {
        self.name = Name(name: name)
        self.lengthOfWork = lenthOfWork
        self.coutryOfWork = coutryOfWork
        self.yearOfBorn = yearOfBorn
        self.genreOfArtist = genreOfArtist
        self.durationOfTrip = durationOfTrip
        self.coutryOfTrip = coutryOfTrip
    }
    
    // MARK: - Методы
    func startTrip() {
        print("Путешествие по работе в \(coutryOfTrip) на \(durationOfTrip) месяцев.")
    }
    func endTrip() { }
    func play() {
        print("Выступает артист \(self.name.name). Он работает в жанре \(self.genreOfArtist)")
    }
    static func coutryOfLife(coutry: String) {
        print(coutry)
    }
    class func nameOfClass() {
        print(String(describing: type(of: self)))
    }
    final func allAtribute() {
        print("Артиста зовут \(self.name.name), ему \(self.age), он работает в \(self.coutryOfWork) уже \(self.lengthOfWork) лет, что заняло \(self.percentOfLife)% его жизни! Он получает \(self.salaryPerDay) рублей в день.")
    }
}

// MARK: - Классы наследники
class Musician: Artist {
    var favoriteInstrument: String
    
    init (favoriteInstrument: String,
          name: String,
          yearOfBorn: Int,
          countryOfWork: CountryOfWork,
          lengthOfWork: Int,
          salaryPerWeek: Int?,
          genreOfArtist: String,
          coutryOfTrip: String,
          durationOfTrip: Int) {
        self.favoriteInstrument = favoriteInstrument
        super.init(name: name,
                   yearOfBorn: yearOfBorn,
                   countryOfWork: countryOfWork,
                   lengthOfWork: lengthOfWork,
                   salaryPerWeek: salaryPerWeek,
                   genreOfArtist: genreOfArtist,
                   coutryOfTrip: coutryOfTrip,
                   durationOfTrip: durationOfTrip)
    }
    
    func newLocationOfWork(location: CountryOfWork) {
        switch location {
        case .turkey(""):
            print("Музыкант не поедет в турцию!")
        default:
            print("Музыкант поедет работать в \(location)")
        }
    }
    override class func nameOfClass() {
        print(String(describing: type(of: self)))
    }
}

class Painter: Artist {
    var nicname: String {
        return self.name.name
            .map { String($0) }
            .shuffled()
            .joined()
            .lowercased()
    }
    
    override class func nameOfClass() {
        print(String(describing: type(of: self)))
    }
}

class Dancer: Artist {
    override var salaryPerDay: Int {
        get {
            return self.salaryPerWeek != nil ? self.salaryPerWeek! / 7 : 0
        }
        set {
            if newValue < 100 {
                print("Танцор отказывается выступать")
            }
        }
    }
    override var salaryInBusinessTrip: Double {
        return self.salaryPerDay > 0 ? (Double(self.salaryPerDay) * self.salaryCoefficient) + (Double(self.salaryPerDay) * self.salaryCoefficient * 0.1)  : (80 * self.salaryCoefficient) + (80 * self.salaryCoefficient * 0.1)
    }
    
    override class func nameOfClass() {
        print(String(describing: type(of: self)))
    }
}

// MARK: - Экземпляры классов
let firstArtist: Artist = Artist(name: "Генри", yearOfBorn: 1995, countryOfWork: .russia("RUS"), lengthOfWork: 11, salaryPerWeek: 90, genreOfArtist: "Модерн", coutryOfTrip: "Бразилия", durationOfTrip: 3)
let secondArtist: Artist = Artist(name: "Марси", yearOfBorn: 1996, countryOfWork: .ukraine("UKR"), lengthOfWork: 13, salaryPerWeek: 100, genreOfArtist: "Поп", coutryOfTrip: "Бразилия", durationOfTrip: 4)

let firstMusician: Musician = Musician(favoriteInstrument: "Гитара", name: "Василий", yearOfBorn: 1991, countryOfWork: .belarus("BLR"), lengthOfWork: 13, salaryPerWeek: 120, genreOfArtist: "Поп", coutryOfTrip: "Венгрия", durationOfTrip: 2)
let secondMusician: Musician = Musician(favoriteInstrument: "Пианино", name: "Петр", yearOfBorn: 1990, countryOfWork: .russia("RUS"),  lengthOfWork: 5, salaryPerWeek: 90, genreOfArtist: "Рок", coutryOfTrip: "Венгрия", durationOfTrip: 2)

let firstPainter: Painter = Painter(name: "Андрей", lenthOfWork: 9, coutryOfWork: .belarus("BLR"), yearOfBorn: 1997, genreOfArtist: "Барокко", durationOfTrip: 1, coutryOfTrip: "Берлин")
let secondPainter: Painter = Painter(name: "Валерия", lenthOfWork: 1, coutryOfWork: .belarus("BLR"), yearOfBorn: 2000, genreOfArtist: "Барокко", durationOfTrip: 2, coutryOfTrip: "Берлин")

let firstDancer: Dancer = Dancer(name: "Рикардо", yearOfBorn: 2000, countryOfWork: .belarus("BLR"), lengthOfWork: 3, salaryPerWeek: 200, genreOfArtist: "Хип-хоп", coutryOfTrip: "Колорадо", durationOfTrip: 4)
let secondDancer: Dancer = Dancer(name: "Валериас", yearOfBorn: 1990, countryOfWork: .turkey("TRK"), lengthOfWork: 5, salaryPerWeek: 300, genreOfArtist: "Хип-хоп", coutryOfTrip: "Колорадо", durationOfTrip: 5)

// MARK: - Массив и вызов выступления артистов
var arrayOfArtist: [Artist] = [firstArtist, secondArtist, firstMusician, secondMusician, firstPainter, secondPainter, firstDancer, secondDancer]

arrayOfArtist.forEach { art in
    art.play()
    if let artist: Dancer = art as? Dancer {
        print(artist.salaryPerDay)
    } else if let artist: Musician = art as? Musician {
        print(artist.favoriteInstrument)
    }
}
// MARK: - Протоколы и расширения
protocol BusinessTrip {
    var coutryOfTrip: String { get set }
    var durationOfTrip: Int { get set }
    
    func startTrip()
    func endTrip()
    func expressIndignation()
}

extension BusinessTrip {
    func startTrip() {
        print("Путешествие по работе в \(coutryOfTrip) на \(durationOfTrip) месяцев.")
    }
    func expressIndignation() { }
}

extension Painter {
    func expressIndignation() {
        print("Мне бы очень не хотелось уезжать в командировку!")
    }
}

protocol PayableBusinessTrip: BusinessTrip {
    var salaryInBusinessTrip: Double { get }
    var salaryCoefficient: Double { get }
}

extension Artist: BusinessTrip, PayableBusinessTrip { }

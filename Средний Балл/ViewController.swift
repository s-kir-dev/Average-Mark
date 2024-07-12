import UIKit

// Используем структуру для хранения оценок и среднего балла
struct Grades {
    var marks: [Int] = []
    var averageMark: Double = 0.0
    
    mutating func calculateAverage() {
        if !marks.isEmpty {
            averageMark = Double(marks.reduce(0, +)) / Double(marks.count)
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelMarks: UILabel!
    
    @IBOutlet weak var labelNextGrade: UILabel!
    var grades = Grades()
    
    
    
    func printResult() {
        if !grades.marks.isEmpty {
            grades.calculateAverage()
            labelResult.text! = """
            Количество оценок: \(grades.marks.count)
            Сумма оценок: \(grades.marks.reduce(0, +))
            Средний балл: \(String(format: "%.2f", grades.averageMark)) = \(round(grades.averageMark))
            """
        } else {
            labelResult.text! = "Введите оценки!"
        }
        
    }
    
    func addMark(_ mark: Int) {
        grades.marks.append(mark)
        labelMarks.text! += " \(mark)"
    }
    
    @IBAction func button1(_ sender: UIButton) {
        addMark(1)
        printResult()
    }
    
    @IBAction func button2(_ sender: UIButton) {
        addMark(2)
        printResult()
    }
    
    @IBAction func button3(_ sender: UIButton) {
        addMark(3)
        printResult()
    }
    
    @IBAction func button4(_ sender: UIButton) {
        addMark(4)
        printResult()
    }
    
    @IBAction func button5(_ sender: UIButton) {
        addMark(5)
        printResult()
    }
    
    @IBAction func button6(_ sender: UIButton) {
        addMark(6)
        printResult()
    }
    
    @IBAction func button7(_ sender: UIButton) {
        addMark(7)
        printResult()
    }
    
    @IBAction func button8(_ sender: UIButton) {
        addMark(8)
        printResult()
    }
    
    @IBAction func button9(_ sender: UIButton) {
        addMark(9)
        printResult()
    }
    
    @IBAction func button10(_ sender: UIButton) {
        addMark(10)
        printResult()
    }
    
    @IBAction func countMark(_ sender: UIButton) {
        printResult()
        if !grades.marks.isEmpty {
            grades.calculateAverage()
            
            if grades.averageMark >= 8 {
                labelResult.text! += " Красавчик 😎🤝"
            } else {
                labelResult.text! += " Филонщик!😡"
            }
        }
    
    }

    @IBAction func deleteLast(_ sender: UIButton) {
        if !grades.marks.isEmpty {
            grades.marks.removeLast()
            labelMarks.text!.removeLast(2)
        }
        printResult()
        if !grades.marks.isEmpty {
            if grades.averageMark >= 8 {
                labelResult.text! += " Красавчик!😎🤝"
            } else {
                labelResult.text! += " Неудовлетворительно!😡"
            }
        }
    
    }
    
    
    @IBAction func clearAll(_ sender: UIButton) {
        grades.marks.removeAll()
        labelMarks.text! = ""
        labelResult.text! = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

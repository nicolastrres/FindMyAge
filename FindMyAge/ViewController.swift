import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var txtBirthdate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func calculateAge(birthdate: Int, currentYear: Int) -> Int {
        return currentYear - birthdate
    }

    @IBAction func btnCalculate(_ sender: Any) {
        let birthdate = Int(txtBirthdate.text!)
        let currentYear = Calendar.current.component(.year, from: Date())
        lblAge.text = "Your age is \(String(calculateAge(birthdate: birthdate!, currentYear: currentYear)))"
    }
}


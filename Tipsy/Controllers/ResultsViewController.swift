
import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var perPerson = "0.0"
    var split = 2
    var tip = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = perPerson
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
}

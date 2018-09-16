

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBtn(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    

}

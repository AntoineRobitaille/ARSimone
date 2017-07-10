//===============================
import UIKit
//===============================
class WrongController: UIViewController {
    
    //-------------------------------
    @IBOutlet weak var scoreLabel: UILabel!
    //-------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = SingletonShared.singletonSharedInstance.scoreForWrongInterface
    }
    
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------
    
}
//===============================

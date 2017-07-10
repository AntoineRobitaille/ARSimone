//===============================
import UIKit
//===============================
class WrongController: UIViewController {
    
    //-------------------------------
    @IBOutlet weak var scoreLabel: UILabel!
    //-------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        SingletonShared.singletonSharedInstance.manageScore()
        scoreLabel.text = SingletonShared.singletonSharedInstance.scoreForWrongInterface
    }
    
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------
    
}
//===============================

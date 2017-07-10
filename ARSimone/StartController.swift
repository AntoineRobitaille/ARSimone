//===============================
import UIKit
//===============================
class StartController: UIViewController {
    //-------------------------------
    @IBOutlet weak var highscoreLabel: UILabel!
    //-------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        //-------------------
        highscoreLabel.text = "HIGHSCORE : \(SingletonShared.singletonSharedInstance.highscore!)"
    }
    
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------

}
//===============================

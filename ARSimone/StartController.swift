//===============================
import UIKit
//===============================
class StartController: UIViewController {
    //-------------------------------
    @IBOutlet weak var highscoreLabel: UILabel!
    //-------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedScore = SingletonShared.singletonSharedInstance.savedHighscore.object(forKey: "score")
        highscoreLabel.text = "HIGHSCORE : \(String(describing: savedScore!))"
    }
    
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------
    @IBAction func resetHighscore(_ sender: UIButton) {
        highscoreLabel.text = "HIGHSCORE : 0"
        SingletonShared.singletonSharedInstance.resetHighscore()
    }
    @IBAction func goToWebPage(_ sender: UIButton) {
        if let url = NSURL(string: "http://www.mariogeneau.com"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }

}
//===============================

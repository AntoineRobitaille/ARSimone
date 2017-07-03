//===============================
import UIKit
//===============================
class GameController: UIViewController {
    //-------------------------------
    @IBOutlet weak var bout1: UIButton!
    @IBOutlet weak var bout2: UIButton!
    @IBOutlet weak var bout3: UIButton!
    @IBOutlet weak var bout4: UIButton!
    @IBOutlet weak var bout5: UIButton!
    @IBOutlet weak var bout6: UIButton!
    @IBOutlet weak var bout7: UIButton!
    @IBOutlet weak var bout8: UIButton!
    @IBOutlet weak var bout9: UIButton!
    @IBOutlet weak var score: UILabel!
    //-------------------------------
    var arrOfButtons: [UIButton]!
    var arrOfRandomButtons: [UIButton] = []
    //----------------
    let simoneBrain = SimoneBrain()
    //-------------------------------
    override func viewDidLoad() {
        //----------------
        super.viewDidLoad()
        //----------------
        arrOfButtons = [bout1, bout2, bout3, bout4, bout5, bout6, bout7, bout8, bout9]
        //----------------
        addRandomButtonToArray()
        //----------------
        simoneBrain.startGame(arrOfRandomButtons)
        //----------------
        score.text = simoneBrain.scoreKeeper
        //----------------
    }
    //-------------------------------
    func addRandomButtonToArray(){
        let randomIndex = simoneBrain.getRandomNumber(from: 0, to: arrOfButtons.count - 1)
        arrOfRandomButtons.append(arrOfButtons[randomIndex])
    }
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------
    @IBAction func buttonManager(_ sender: UIButton) {
    }
    //-------------------------------

}
//===============================








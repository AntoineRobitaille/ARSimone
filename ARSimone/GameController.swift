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
    var arrOfGameColors: [UIButton]!
    var simoneBrain: SimoneBrain!
    //-------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        arrOfGameColors = [bout1, bout2, bout3, bout4, bout5, bout6, bout7, bout8, bout9]
        simoneBrain = SimoneBrain(gameColors: arrOfGameColors)
        simoneBrain.addRandomColorToArray()
        simoneBrain.startGame()
        score.text = simoneBrain.scoreKeeper
        simoneBrain.loadArrayForComparison()
    }
    //-------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //-------------------------------
    @IBAction func buttonManager(_ sender: UIButton) {
        if !simoneBrain.userTurnToPlay {
            return
        }
        if simoneBrain.arrCopyOfRandomColorsToCompare.count == 0 {
            simoneBrain.arrCopyOfRandomColorsToCompare = simoneBrain.arrRandomColors
        }
        if !simoneBrain.verification(arrOfGameColors[sender.tag]) {
            let theScore = simoneBrain.arrRandomColors.count - 1
            let forWrongDisplay = "SCORE : \(theScore)"
            SingletonShared.singletonSharedInstance.scoreForWrongInterface = "\(forWrongDisplay)"
            SingletonShared.singletonSharedInstance.saveScore(String(theScore))
            performSegue(withIdentifier: "wrong", sender: nil)
        }
        simoneBrain.scoreKeeperCounter! += 1
        score.text = "\(simoneBrain.scoreKeeperCounter!)"
    }
    //-------------------------------

}
//===============================

































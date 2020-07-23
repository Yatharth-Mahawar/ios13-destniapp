

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var story1 = Storybrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
       

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        story1.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
        
    }
    
    func updateUI(){
        storyLabel.text = story1.getTitle()
        choice1Button.setTitle(story1.getChoice1(), for: .normal)
        choice2Button.setTitle(story1.getChoice2(), for: .normal)
    }
}


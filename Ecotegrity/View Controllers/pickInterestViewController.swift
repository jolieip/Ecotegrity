
import UIKit

class pickInterestViewController: UIViewController {
    
    @IBOutlet weak var pickinterestlabel: UILabel!
    
    @IBOutlet weak var searchtextfield: UITextField!
    
    @IBOutlet weak var searchbutton: UIButton!
    
    @IBOutlet weak var plasticwaste: UIButton!
    
    @IBOutlet weak var plasticeffects: UIButton!
    
    @IBOutlet weak var oceanandwildlife: UIButton!
    
    @IBOutlet weak var recycle: UIButton!
    @IBOutlet weak var GoToHome: UIButton!
    @IBOutlet weak var nextstep: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        var view = UILabel()

        view.frame = CGRect(x: 0, y: 0, width: 156, height: 36)

        view.backgroundColor = .white


        view.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

        view.font = UIFont(name: "Poppins-Regular", size: 24)


        // Line height: 36 pt

        // (identical to box height)


        view.textAlignment = .center

        view.text = "Pick Interests"


        var parent = self.view!

        parent.addSubview(view)

        view.translatesAutoresizingMaskIntoConstraints = false

        view.widthAnchor.constraint(equalToConstant: 156).isActive = true

        view.heightAnchor.constraint(equalToConstant: 36).isActive = true

        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 129).isActive = true

        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 60).isActive = true

        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

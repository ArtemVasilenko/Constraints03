// VFL

import UIKit

class ViewController: UIViewController {
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        
    
    }


}


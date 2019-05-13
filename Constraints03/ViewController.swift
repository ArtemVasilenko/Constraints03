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
    
    
    let greenView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .green
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let blackView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .black
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        self.view.addSubview(greenView)
        self.view.addSubview(blackView)
        
    
        let viewVFL = ["redView": redView, "blueView": blueView]
        
        let metrics = ["height": 100, "width": self.view.bounds.width/3, "top": self.view.bounds.height/2]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-top-[redView(height)]|",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-top-[blueView(height)]|",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[redView(width)]-50-[blueView(width)]-|",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
    }
    
}


//
//  SecView.swift
//  protocolDelegation
//
//  Created by Bjit on 2/12/22.
//

import UIKit
protocol ChangeBgDelegate{
    func changeBg(delegate: UIImage?)
}
class SecView: UIViewController {
    var delegate : ChangeBgDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
    }
    
    
    @IBAction func houseBaratheon(_ sender: Any) {
        delegate?.changeBg(delegate: UIImage(named: "Image-1" ))
        self.dismiss(animated: true)
    }
    
    
    @IBAction func houseTargaryen(_ sender: Any) {
        delegate?.changeBg(delegate: UIImage(named: "Image"))
        self.dismiss(animated: true)
    }
}

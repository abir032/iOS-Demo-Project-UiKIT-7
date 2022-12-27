//
//  ViewController.swift
//  protocolDelegation
//
//  Created by Bjit on 2/12/22.
//

import UIKit

class ViewController: UIViewController, ChangeBgDelegate{
   
    
    @IBOutlet weak var imageView: UIImageView!
    
    func changeBg(delegate: UIImage?) {
        imageView.image = delegate
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "changeBG"{
            if let bg = segue.destination as? SecView {
                bg.delegate = self
            }
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



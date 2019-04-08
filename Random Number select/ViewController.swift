//
//  ViewController.swift
//  Random Number select
//
//  Created by Nguyễn Cao Cuong on 08/04/2019.
//  Copyright © 2019 Nguyễn Cao Cuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var random30 : Int = 0
    var random2 : Int = 0
    var numDau : Int = 0
    var numCuoi : Int = 0
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var num30: UITextField!
    
    @IBOutlet weak var txtDau: UITextField!
    
    @IBOutlet weak var txtCuoi: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Git Tutorial")
        print("Hi there, this is branch develop")
         print("Hello, this is commit to remote")
   
    updateRandomNumber()
    
    }

    @IBAction func brnRoll(_ sender: Any) {
  updateRandomNumber()
    }
    func updateRandomNumber(){
        random30 = Int(arc4random_uniform(30))+1
        random2 = Int(arc4random_uniform(2))+1
        num2.text = String(random2)
        num30.text = String(random30)
        numDau = Int(arc4random_uniform(10))
        numCuoi = Int(arc4random_uniform(10))
        txtDau.text = String(numDau)
        txtCuoi.text = String(numCuoi)
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
       updateRandomNumber()
    }
    
}


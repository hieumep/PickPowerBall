//
//  ViewController.swift
//  PickPowerBall
//
//  Created by Hieu Vo on 1/11/16.
//  Copyright © 2016 Hieu Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var thirdNumber: UILabel!
    @IBOutlet weak var fourthNumber: UILabel!
    @IBOutlet weak var fifthNumber: UILabel!
    @IBOutlet weak var powerBallNumber: UILabel!
    
    var arrayNumber : [Int] = []
    var arrayPowerBallNumber : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   setupArrayNumbers()
    }

    @IBAction func getLuckyNumber(sender: AnyObject) {
        setupArrayNumbers()
        firstNumber.text = "\(getRandomNumber())"
        secondNumber.text = "\(getRandomNumber())"
        thirdNumber.text = "\(getRandomNumber())"
        fourthNumber.text = "\(getRandomNumber())"
        fifthNumber.text = "\(getRandomNumber())"
        let randomIndex = Int(arc4random_uniform(UInt32(arrayPowerBallNumber.count)))
        let number = arrayPowerBallNumber[randomIndex]
        powerBallNumber.text = "\(number)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupArrayNumbers(){
        arrayNumber.removeAll()
        arrayPowerBallNumber.removeAll()
        for i in 1...69 {
            arrayNumber.append(i)
        }
        
        for i in 1...26{
            arrayPowerBallNumber.append(i)
        }
    }
    
    func getRandomNumber() -> Int{
        let randomIndex = Int(arc4random_uniform(UInt32(arrayNumber.count)))
        let number = arrayNumber[randomIndex]
        arrayNumber.removeAtIndex(randomIndex)
        return number
    }
}


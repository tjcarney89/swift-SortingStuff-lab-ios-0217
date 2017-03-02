//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performOperation(with numbers: Double..., operation: (Double, Double) -> Double) -> Double {
        var newNumbers = numbers
        let removedNumber = newNumbers.removeFirst()
        let result = newNumbers.reduce(removedNumber) { (runningTotal: Double, next: Double) in
            return operation(runningTotal, next)
        }
        return result
    }
    
}

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
        let result = performOperation(with: 5, 2, -9, operation: -)
        print(result)
        // Prints "12.0"
        
        let anotherResult = performOperation(with: 2, 2, 5, operation: +)
        print(anotherResult)
        // Prints "9.0"
    }
    
    func performOperation(with numbers: Double..., operation: @escaping (Double, Double) -> Double) -> Double {
        guard !numbers.isEmpty else { return 0 }
        var numbers = numbers
        let first = numbers.removeFirst()
        return numbers.reduce(first) { operation($0, $1) }
    }
    

    
}

//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sebastián Osorio on 3/24/16.
//  Copyright © 2016 Sebastián Osorio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    
    let responses = [
        "Si", "No", "Prueba preguntando de nuevo", "Ninguno", "Creo que no", "Probablemente"
    ];
    var voice = AVSpeechSynthesizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionResponse(sender: UIButton) {
        let respuesta = responses[randomNumber()]
        
        let utterance = AVSpeechUtterance(string:respuesta)
        voice.speakUtterance(utterance)
        
    }
    
    func randomNumber(range: Range<Int> = 0...5) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }

}


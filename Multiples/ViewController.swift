//
//  ViewController.swift
//  Multiples
//
//  Created by Nate on 4/25/16.
//  Copyright © 2016 Karabensh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var multiple: Int = 0
    var sum: Int = 0
    var counter: Int = 0
    
    //Main Menu Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var multiplesText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    //Game Screen Outlets
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func onPlayBtnPress(sender: UIButton!) {
        
        if (multiplesText.text != nil && multiplesText.text != "") {
            
            //Hide the main menu
            logoImg.hidden = true
            multiplesText.hidden = true
            playButton.hidden = true
            
            //Reveal the Game Screen
            gameLabel.hidden = false
            addButton.hidden = false
            gameLabel.text = "Press Add to add!"
            
            //Set up addition
            multiple = Int(multiplesText.text!)!
            sum = 0
            counter = 0
        }
    }
    
    @IBAction func onAddBtnPress(sender: UIButton!) {
        
        //Only due multiples up to 12
        if (counter < 12) {
            gameLabel.text = "\(sum) + \(multiple) = \(sum+multiple)"
            sum += multiple
            counter += 1
        } else {
            gameIsOver()
        }
        
    }
    
    
    func gameIsOver() {
        
        //Hide the Game Screen
        gameLabel.hidden = true
        addButton.hidden = true
        
        //Reveal the main menu
        logoImg.hidden = false
        multiplesText.hidden = false
        playButton.hidden = false
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


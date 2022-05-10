//
//  ViewController.swift
//  Card memory game
//
//  Created by Dmitry Dorodniy on 10.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0 {
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }

    func flipButton (emoji: String, button: UIButton) {

        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .systemMint
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        }
    }

let emojiCollection = ["🦊", "🐷", "🦊", "🐷"]



    @IBOutlet var buttonCollection: [UIButton]!

    @IBOutlet weak var touchLabel: UILabel!

    @IBAction func buttonAction(_ sender: UIButton) {

        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
        flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }

}


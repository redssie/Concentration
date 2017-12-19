//
//  ViewController.swift
//  Concentration
//
//  Created by Maja Zafran on 11/12/2017.
//  Copyright © 2017 Maja Zafran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
    var numberOfPairsOfCards: Int {
        return (CardButtons.count+1)/2
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        theme = Theme()
        setBackgroundTheme()
        game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
        updateViewFromModel()
    }

    @IBOutlet private weak var newGameButton: UIButton!
    @IBOutlet private var CardButtons: [UIButton]!
    @IBOutlet private weak var flipCountLable: UILabel!
    
    private var theme = Theme()
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = CardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Chosen card was not in cardButtons!")
        }
        
    }
    
    
    
    func updateViewFromModel(){
        for index in CardButtons.indices{
            let button = CardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.983929728, green: 0.6300414998, blue: 0.2028463216, alpha: 0) : theme.backOfCardColor
            }
            flipCountLable.text = "Points: \(game.points)"
        }
    }
    
    
    
    
    private var emoji = [Card:String]()
    //lazy var theme = getRandomTheme(from: themes)
    
    func emoji(for card: Card) -> String {
        if emoji[card] == nil, theme.emojiTheme.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(theme.emojiTheme.count)))
            emoji[card] = theme.emojiTheme.remove(at: randomIndex)
        }
        
        return emoji[card] ?? "?"
    }
    
    private func setBackgroundTheme(){
        view.backgroundColor = theme.viewBackgroundColor
        for button in CardButtons {
            button.backgroundColor = theme.backOfCardColor
        }
        flipCountLable.textColor = theme.backOfCardColor
        newGameButton.setTitleColor(theme.backOfCardColor, for: UIControlState.normal)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setBackgroundTheme()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


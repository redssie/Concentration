//
//  Theme.swift
//  Concentration
//
//  Created by Maja Zafran on 12/12/2017.
//  Copyright © 2017 Maja Zafran. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    var emojiTheme: [String]
    var viewBackgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    var backOfCardColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
    
    var backgrounds = [
        //[viewBackgroundColor, backOfCardColor]
        "mistical": [ #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)],
        "waterAnimals": [ #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)],
        "food": [ #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)],
        "sports": [ #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)],
        "faces": [ #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)],
        "signs": [ #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)],
        "hearts": [ #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)],
        "clocks": [ #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)],
        "flags": [ #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)],
        "it": [ #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)],
        "movies": [ #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)]
    ]
    
    var themes = [
        "mistical": ["🦕","🦄","🐉","🦖", "🧞‍♂️", "🧚‍♀️", "🧜‍♂️", "🧟‍♂️", "👻", "👽", "👿", "🎅🏻"],
        "waterAnimals": ["🐙", "🦑", "🦐", "🦀", "🐡", "🐠", "🐟", "🐬", "🐳", "🐋", "🦈", "🐊"],
        "food": ["🌭", "🍔", "🍟", "🍖", "🍗", "🍕", "🥓", "🌮", "🍝", "🥗", "🌯", "🥪"],
        "sports": ["🏹", "🛷", "⛸", "🥋", "🏓", "🏀", "⚽️", "🏒", "🎿", "🏐", "🎾", "⛳️"],
        "faces": ["😡", "😘", "😇", "😄", "🤩", "😱", "🤐", "😈", "🤔", "😎", "😜", "😴"],
        "signs": ["🤲🏽", "👐🏾", "✊🏼", "👊🏻", "👎🏿", "👍🏿", "☝🏽", "💪🏾", "🖖", "👌🏻", "🤝", "🤟🏼"],
        "hearts": ["❤️", "🧡", "💛", "💚", "💙", "💜", "🖤", "💔", "💝", "💘", "💖", "💗"],
        "clocks": ["🕐", "🕑", "🕒", "🕓", "🕔", "🕕", "🕖", "🕗", "🕘", "🕙", "🕚", "🕛"],
        "flags": ["🇦🇺", "🇦🇹", "🇧🇪", "🇧🇦", "🇧🇷", "🇨🇦", "🇰🇭", "🇨🇮", "🇭🇷", "🇨🇺", "🇨🇾", "🇩🇪", "🇬🇷", "🇭🇺", "🇮🇸", "🇮🇪", "🇯🇵", "🇱🇻", "🇳🇱", "🇳🇴", "🇷🇺", "🇷🇸", "🇸🇮", "🇸🇰", "🇰🇷", "🇺🇸", "🇬🇧", "🏴󠁧󠁢󠁥󠁮󠁧󠁿"],
        "it": ["💻", "💾", "📀", "📺", "🕹", "🎮", "📠", "📼", "🖥", "📱", "📁", "🎧"],
        "movies": ["🎬", "🎶", "📽", "🎥", "🎞", "📹", "🎟", "🎫", "🍿", "🥤", "⭐️", "🌃"]
    ]

    init(){
        let randomIndexOfTheme = themes.count.arc4random
        self.emojiTheme = Array(themes.values)[randomIndexOfTheme]
        //print(Array(themes.keys)[randomIndexOfTheme])
        self.viewBackgroundColor = backgrounds[Array(themes.keys)[randomIndexOfTheme]]![0]
        self.backOfCardColor = backgrounds[Array(themes.keys)[randomIndexOfTheme]]![1]
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}








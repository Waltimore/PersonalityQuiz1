//
//  QuestionDate.swift
//  PersonalityQuiz
//
//  Created by David van der Velden on 17/11/2017.
//  Copyright © 2017 David van der Velden. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dolphin = "🐬", puffFish = "🐡", octopus = "🐙", shrimp = "🦐"
    
    var definition: String {
        switch self {
        case.dolphin:
            return "You are so helpful and nice and cool so you are a dolphin!"
        case.puffFish:
            return "You love food and are sort of puffy so you are a puff fish"
        case.octopus:
            return "You are a hard worker but sort of lonely drifting through life like an octopus!"
        case.shrimp:
            return "You're wild and you love to party so you are a shrimp!"
        }
    }
}

var questions: [Question] = [
    Question(text: "What's the most important thing in life?", type: .single, answers: [
        Answer(text: "Partying!", type: .shrimp),
        Answer(text: "Eating!", type: .puffFish),
        Answer(text: "Career", type: .octopus),
        Answer(text: "Friends and Family!", type: .dolphin)
        ]),
    
    Question(text: "What activities do you enjoy?", type: .multiple, answers: [
        Answer(text: "Making my own pasta", type: .puffFish),
        Answer(text: "Knitting", type: .octopus),
        Answer(text: "Snorting cocaine", type: .shrimp),
        Answer(text: "Helping old people cross streets", type: .dolphin)
        ]),
    
    Question(text: "How much would you enjoy a zombie apocalypse?", type: .ranged, answers: [
        Answer(text: "This is a ridiculous question, a zombie apocolypse will never happen.", type: .octopus),
        Answer(text: "Well, if it were to happen, I wouldn't enjoy seeing humanity suffer.", type: .dolphin),
        Answer(text: "I would enjoy it since I would be raiding all the stores and eating everything in the supermarket.", type: .puffFish),
        Answer(text: "I would LOVE it and would probably be the last human still standing. Danger turns me on.", type: .shrimp)
        ])
]


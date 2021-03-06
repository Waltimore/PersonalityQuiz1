//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by David van der Velden on 16/11/2017.
//  Copyright © 2017 David van der Velden. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
        // Do any additional setup after loading the view.
    }
    var responses: [Answer]!
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responsesTypes = responses.map { $0.type }
        for response in responsesTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

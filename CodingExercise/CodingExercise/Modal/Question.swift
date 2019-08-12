//
//  Question.swift
//  CodingExercise
//
//  Created by Tej on 07/08/19.
//  Copyright © 2019 Tej. All rights reserved.
//

import Foundation

struct Question: Codable {
    let title: String
    let isAnswered: Bool
    let answerCount: Int
    let acceptedAnswerId: Int?
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case isAnswered = "is_answered"
        case answerCount = "answer_count"
        case acceptedAnswerId = "accepted_answer_id"
    }
}

//
//  QuestionStructure.swift
//  DTAdmin
//
//  Created by Volodymyr on 10/25/17.
//  Copyright © 2017 if-ios-077. All rights reserved.
//

import Foundation
struct QuestionStructure: Serializable {
    var id: String?
    var testId: String
    var questionText: String
    var level: String
    var type: String
    var attachment: String
    init?(dictionary: [String: Any]) {
        id = dictionary["question_id"] as? String
        guard let testId = dictionary["test_id"] as? String,
        let questionText = dictionary["question_text"] as? String,
        let level = dictionary["level"] as? String,
        let type = dictionary["type"] as? String,
        let attachment = dictionary["attachment"] as? String
            else { return nil }
        self.testId = testId
        self.questionText = questionText
        self.level = level
        self.type = type
        self.attachment = attachment
    }
    var dictionary: [String: Any] {
        var result: [String: Any] = ["test_id": self.testId, "question_text": self.questionText, "level": self.level, "type": self.type, "attachment": self.attachment]
        if let id = id { result["question_id"] = id }
        return result
    }
}


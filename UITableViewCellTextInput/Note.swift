//
//  Note.swift
//  UITableViewCellTextInput
//
//  Created by Toomas Vahter on 03/11/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import Foundation

final class Note {
    init(topic: String, text: String) {
        self.topic = topic
        self.text = text
    }
    
    var topic: String = "" {
        didSet {
            print("Topic changed to \(topic).")
        }
    }
    
    var text: String = "" {
        didSet {
            print("Text changed to \(text).")
        }
    }
}

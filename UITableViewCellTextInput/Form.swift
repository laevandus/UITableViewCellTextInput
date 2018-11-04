//
//  Form.swift
//  UITableViewCellTextInput
//
//  Created by Toomas Vahter on 03/11/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import Foundation

final class Form {
    let sections: [FormSection]
    init(sections: [FormSection]) {
        self.sections = sections
    }
}

final class FormSection {
    let items: [FormItem]
    init(items: [FormItem]) {
        self.items = items
    }
}

protocol FormItem {}

struct TextInputFormItem: FormItem {
    let text: String
    let placeholder: String
    let didChange: (String) -> ()
}

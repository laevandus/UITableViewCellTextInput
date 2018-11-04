//
//  FormViewController+Note.swift
//  UITableViewCellTextInput
//
//  Created by Toomas Vahter on 03/11/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

extension FormViewController {
    convenience init(note: Note) {
        let form = Form(sections: [
            FormSection(items: [
                TextInputFormItem(text: note.topic,
                                  placeholder: "Add title",
                                  didChange: { text in
                                    note.text = text
                }),
                TextInputFormItem(text: note.text,
                                  placeholder: "Add description",
                                  didChange: { text in
                                    note.text = text
                })
                ])
            ])
        self.init(form: form)
    }
}

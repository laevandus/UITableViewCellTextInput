//
//  FormViewController.swift
//  UITableViewCellTextInput
//
//  Created by Toomas Vahter on 03/11/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

final class FormViewController: UITableViewController {
    
    // MARK: Creating a Form View
    
    let form: Form
    
    init(form: Form) {
        self.form = form
        super.init(style: .grouped)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Managing the View
    
    private enum ReuseIdentifiers: String {
        case textInput
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 44
        tableView.register(TextInputTableViewCell.self, forCellReuseIdentifier: ReuseIdentifiers.textInput.rawValue)
    }
    
    // MARK: Providing Table View Content
    
    private func model(at indexPath: IndexPath) -> FormItem {
        return form.sections[indexPath.section].items[indexPath.item]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return form.sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return form.sections[section].items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let object = model(at: indexPath)
        if let textRow = object as? TextInputFormItem {
            let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifiers.textInput.rawValue, for: indexPath) as! TextInputTableViewCell
            cell.configure(for: textRow)
            return cell
        }
        else {
            fatalError("Unknown model \(object).")
        }
    }
}

//
//  ContactListViewController.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var contacts = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let addButton = UIBarButtonItem.init(title: "Add", style: .done, target: self, action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItem = addButton        
        self.navigationItem.leftBarButtonItem = self.editButtonItem

        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
    }
    

    @objc
    func addTapped() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "AddContactViewController") as! AddContactViewController
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    // MARK: - TableView datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ContactTableViewCell
        
        let contact = contacts[indexPath.row]
        cell.setContact(contact)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            contacts.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
    
    // MARK: - TableView delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74
    }
    
}


extension ContactListViewController : AddContactDelegate {
    
    func didCreateContact(contact: Contact) {
        contacts.append(contact)
        tableView.reloadData()
    }
    
    
}

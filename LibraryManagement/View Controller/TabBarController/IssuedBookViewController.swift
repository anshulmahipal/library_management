//
//  IssuedBookViewController.swift
//  LibraryManagement
//
//  Created by yogesh on 16/03/22.
//

import UIKit

class IssuedBookListCell: UITableViewCell {
    
    
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var issueDate: UILabel!
    @IBOutlet weak var issuerName: UILabel!
    @IBOutlet weak var returnDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class IssuedBookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IssuedBookListCell") as! IssuedBookListCell
        return cell
    }
}

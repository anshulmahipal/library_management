//
//  AllBookViewController.swift
//  LibraryManagement
//
//  Created by yogesh on 16/03/22.
//

import UIKit

class AllBookListCell: UITableViewCell {
    
    
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var isbnNumber: UILabel!
    @IBOutlet weak var bookPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class AllBookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllBookListCell") as! AllBookListCell
        return cell
    }
}

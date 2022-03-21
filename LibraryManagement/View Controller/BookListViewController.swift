//
//  BookListViewController.swift
//  LibraryManagement
//
//  Created by ANSHUL MAHIPAL on 11/03/22.
//

import UIKit
import SVProgressHUD

class BookListCell: UITableViewCell {
    
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var issueDate: UILabel!
    @IBOutlet weak var returnDate: UILabel!
    @IBOutlet weak var issuerName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


class BookListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var books: [BookDetail] = []
    var user: UserType = .library
    
    @IBOutlet weak var addBookBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //SVProgressHUD.dismiss()
        addBookBtn.isHidden = user != .library
        books.append(.init(bookName: "Abc", authorName: "Patrick", issueDate: "-", returnData: "-", issuerName: "-"))
        books.append(.init(bookName: "Truth", authorName: "James", issueDate: "-", returnData: "-", issuerName: "-"))
        books.append(.init(bookName: "The Life", authorName: "John", issueDate: "-", returnData: "-", issuerName: "-"))
        books.append(.init(bookName: "XYZ", authorName: "Sohail", issueDate: "-", returnData: "-", issuerName: "-"))
        books.append(.init(bookName: "Condition", authorName: "David", issueDate: "-", returnData: "-", issuerName: "-"))
        tableView.tableFooterView = UIView()
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func addBook(_ sender: Any) {
        print("add")
        let vc = storyboard?.instantiateViewController(identifier: "AddBookViewController") as! AddBookViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookListCell") as! BookListCell
        cell.issuerName.text = books[indexPath.row].issuerName
        cell.bookName.text = books[indexPath.row].bookName
        cell.issueDate.text = books[indexPath.row].issueDate
        cell.returnDate.text = books[indexPath.row].reutrnDate
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "BookDetailViewController") as! BookDetailViewController
        vc.books = books[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


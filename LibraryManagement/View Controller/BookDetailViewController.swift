//
//  BookDetailViewController.swift
//  LibraryManagement
//
//  Created by yogesh on 14/03/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    var books: BookDetail!
    
    
    @IBOutlet weak var bookName: UITextField!
    @IBOutlet weak var authorName: UITextField!
    @IBOutlet weak var issueDate: UITextField!
    @IBOutlet weak var issuerName: UITextField!
    @IBOutlet weak var returnDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(books.bookName)
       
        bookName.text = books.bookName
        authorName.text = books.authorName
        issueDate.text = books.issueDate
        returnDate.text = books.reutrnDate
        issuerName.text = books.issuerName
    }
    
    @IBAction func assignStudent(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "StudentListViewController") as! StudentsViewController
        vc.onSelectStudent = {student in
            self.issuerName.text = student
            self.issueDate.text = "14th March 2022"
            self.returnDate.text = "24th March 2022"
            self.books.issuerName = student
            self.books.issueDate = "14th March 2022"
            self.books.reutrnDate = "24th March 2022"
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func studentList(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

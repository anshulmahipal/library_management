//
//  AddBookViewController.swift
//  LibraryManagement
//
//  Created by yogesh on 15/03/22.
//

import UIKit

class AddBookViewController: UIViewController {

    @IBOutlet weak var backToBook: UnderlinedLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(backToLoginFunction))
        backToBook.isUserInteractionEnabled = true
        backToBook.addGestureRecognizer(tap)
    }
    
    @objc func backToLoginFunction(sender:UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }
}

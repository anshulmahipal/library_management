//
//  ViewController.swift
//  LibraryManagement
//
//  Created by ANSHUL MAHIPAL on 10/03/22.
//

import UIKit

class LoginTypeViewController: UIViewController {

    var user: UserType = .library
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginAsLibrarianBtn(_ sender: Any) {
        user = .library
        let vc = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        vc.user = user
        vc.loginString = "Login as Librarian"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginAsStudentBtn(_ sender: Any) {
        user = .student
        let vc = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        vc.user = user
        vc.loginString = "Login as Student"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


//
//  LoginViewController.swift
//  LibraryManagement
//
//  Created by ANSHUL MAHIPAL on 10/03/22.
//

import UIKit
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet var userView: UIView!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var registerView: UIView!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var registerLabel: UnderlinedLabel!
    
    var user: UserType = .library
    var loginString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerView.isHidden = user == .library
        loginLabel.text = loginString
        registerLabel.text = "Register"
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(registerFunction))
        registerLabel.isUserInteractionEnabled = true
        registerLabel.addGestureRecognizer(tap)
    }
    
    
    @objc func registerFunction(sender:UITapGestureRecognizer) {
        print("Register")
        let vc = storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        //SVProgressHUD.show()
        if user == .student {
            let vc = storyboard?.instantiateViewController(identifier: "TabBarViewController") as! TabBarViewController
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            let vc = storyboard?.instantiateViewController(identifier: "BookListViewController") as! BookListViewController
            vc.user = user
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

//
//  RegisterViewController.swift
//  LibraryManagement
//
//  Created by ANSHUL MAHIPAL on 11/03/22.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {

    @IBOutlet var backToLoginLabel: UnderlinedLabel!
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var rollNo: UITextField!
    @IBOutlet weak var userNameLabel: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var classLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToLoginLabel.text = "Back To Login"
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(backToLoginFunction))
        backToLoginLabel.isUserInteractionEnabled = true
        backToLoginLabel.addGestureRecognizer(tap)
    }
    
    @objc func backToLoginFunction(sender:UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func registerBtn(_ sender: Any) {
        
        if fullName.text!.isEmpty {
            AlertUtils.alertMessage(title: "Error!", message: "Please Enter Fullname", viewC: self)
            return
        } else if rollNo.text!.isEmpty {
            AlertUtils.alertMessage(title: "Error!", message: "Please Enter Roll No", viewC: self)
            return
        } else if userNameLabel.text!.isEmpty {
            AlertUtils.alertMessage(title: "Error!", message: "Please Enter User Name", viewC: self)
            return
        } else if password.text!.isEmpty {
            AlertUtils.alertMessage(title: "Error!", message: "Please Enter Password", viewC: self)
            return
        } else if classLabel.text!.isEmpty {
            AlertUtils.alertMessage(title: "Error!", message: "Please Enter Class", viewC: self)
            return
        }
        
        
        let s = Student(context: CoreDataService.instance.persistentContainer.viewContext)
        s.name = fullName.text
        s.password = password.text
        s.roleNumber = rollNo.text
        s.course = classLabel.text
        s.username = userNameLabel.text
        CoreDataService.instance.saveContext()
        let students: [Student] = CoreDataService.instance.fetchData()
        print(students)
        
    }
}

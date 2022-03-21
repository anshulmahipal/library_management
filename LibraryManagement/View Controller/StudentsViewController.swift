//
//  StudentListViewController.swift
//  LibraryManagement
//
//  Created by yogesh on 14/03/22.
//

import UIKit


class StudentListCell: UITableViewCell {
    
    @IBOutlet weak var studentName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


class StudentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var onSelectStudent: ((_ studentName: String) -> Void)!
    var studentList: [Student] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        studentList = CoreDataService.instance.fetchData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentListCell") as! StudentListCell
        cell.studentName.text = studentList[indexPath.row].username
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        onSelectStudent(studentList[indexPath.row].username!)
        self.navigationController?.popViewController(animated: true)
    }
}

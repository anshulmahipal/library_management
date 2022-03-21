//
//  BaseViewController.swift
//  ASAPhGo
//
//  Created by ANSHUL MAHIPAL on 10/02/22.
//

import UIKit

class BaseViewController: UIViewController {
    
    
    private lazy var backButton: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(named: "iconWithTitle"), style: .plain, target: self, action: nil)

    }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationLeftBarButton()
        setNavigationBarTransparent()
        self.navigationItem.hidesBackButton = true
    }

   
    
    func setNavigationBarTransparent() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    func setNavigationBarVisible() {
        let image = UIImage(named: "iconWithTitle")
        self.navigationItem.titleView = UIImageView(image: image)
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.navigationBar.barTintColor = .white
    }

    
    func setNavigationLeftBarButton(){
        self.navigationItem.setLeftBarButton(self.backButton, animated: true)
    }
}

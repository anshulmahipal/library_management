//
//  AlertUtils.swift
//  N2xpress
//
//  Created by ANSHUL MAHIPAL on 16/03/22.
//

import Foundation
import UIKit

class AlertUtils {
    
   class func alertMessage(title: String, message: String, viewC: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        viewC.present(alert, animated: true, completion: nil)
    }
    
    class func setOkWithAction(title: String, message: String, viewC: UIViewController, action: @escaping ((_ action: UIAlertAction) -> Void)) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: action))
        viewC.present(alert, animated: true, completion: nil)
    }

    class func setOkWithActionAlert(title: String, message: String, viewC: UIViewController, firstActionName: String, action: @escaping ((_ action: UIAlertAction) -> Void)) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: firstActionName, style: .cancel, handler: action))
        viewC.present(alert, animated: true, completion: nil)
    }
    
    class func setDoubleActionAlert(title: String, message: String, firstActionName: String, viewC: UIViewController, firstAction: @escaping ((_ action: UIAlertAction) -> Void), secondActionName: String, secondAction: @escaping ((_ action: UIAlertAction) -> Void)) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: firstActionName, style: .destructive, handler: firstAction))
        alert.addAction(UIAlertAction(title: secondActionName, style: .default, handler: secondAction))
        viewC.present(alert, animated: true, completion: nil)
    }
}

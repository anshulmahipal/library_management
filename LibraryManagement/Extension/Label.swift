//
//  Label.swift
//  LibraryManagement
//
//  Created by ANSHUL MAHIPAL on 11/03/22.
//

import Foundation
import UIKit


class UnderlinedLabel: UILabel {
override var text: String? {
    didSet {
        guard let text = text else { return }
        let textRange = NSRange(location: 0, length: text.count)
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(.underlineStyle,
                                    value: NSUnderlineStyle.single.rawValue,
                                    range: textRange)
        self.attributedText = attributedText
        }
    }
}

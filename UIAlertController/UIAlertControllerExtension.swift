//
//  UIAlertControllerExtension.swift
//  UIAlertController
//
//  Created by SRBD on 20/5/21.
//

import UIKit

extension UIAlertController {
    /// Configures the `title` of `UIAlertController` as an `NSAttributedString`.
    func configureTitle(
        font: UIFont? = nil,
        foregroundColor: UIColor? = nil,
        backgroundColor: UIColor? = nil
    ) {
        guard let title = self.title else { return }
        let attributedTitle = NSMutableAttributedString(string: title)
        let range = NSRange(location: 0, length: title.count)

        if let font = font {
            attributedTitle.addAttribute(.font, value: font, range: range)
        }
        if let foregroundColor = foregroundColor {
            attributedTitle.addAttribute(.foregroundColor, value: foregroundColor, range: range)
        }
        if let backgroundColor = backgroundColor {
            attributedTitle.addAttribute(.backgroundColor, value: backgroundColor, range: range)
        }
        setValue(attributedTitle, forKey: "attributedTitle")
    }
}


//
//  PasswordTextField.swift
//  Password
//
//  Created by Rahul Dhar on 02/04/23.
//

import UIKit

class PasswordTextField: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension PasswordTextField {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemCyan
    }
    
    func layout() {
        
    }
}

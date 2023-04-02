//
//  ViewController.swift
//  Password
//
//  Created by Rahul Dhar on 02/04/23.
//

import UIKit

class ViewController: UIViewController {
    let stackView = UIStackView()
    let newPasswordTextField = PasswordTextField(placeHolderText: "Enter password")
    //    let criteriaView = PasswordCriteriaView(text: "uppercase letter (A-Z)")
    let statusView=PasswordStatusView()
    let confirmPasswordTextField=PasswordTextField(placeHolderText: "Enter confirm password")
    let resetButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        newPasswordTextField.delegate=self
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        //        criteriaView.translatesAutoresizingMaskIntoConstraints = false
        statusView.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.configuration = .filled()
        resetButton.setTitle("Reset password", for: [])
    }
    
    func layout() {
        stackView.addArrangedSubview(newPasswordTextField)
               stackView.addArrangedSubview(statusView)
               stackView.addArrangedSubview(confirmPasswordTextField)
               stackView.addArrangedSubview(resetButton)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2)
        ])
        
        
        
    }
}
extension ViewController: PasswordTextFieldDelegate {
    func editingChanged(_ sender: PasswordTextField) {
        if sender === newPasswordTextField {
             statusView.updateDisplay(sender.textField.text ?? "")
        }
    }
}

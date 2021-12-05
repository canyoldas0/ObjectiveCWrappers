//
//  MainViewController.swift
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - View Components
    private lazy var encryptButton: UIButton = {
        let temp = UIButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.setTitle("Encrypt!", for: .normal)
        temp.backgroundColor = .systemGreen
        temp.layer.cornerRadius = 25
        temp.setTitleColor(.black, for: .normal)
        temp.addTarget(self, action: #selector(encryptButtonTapped), for: .touchUpInside)
        return temp
    }()
    
    private lazy var decryptButton: UIButton = {
        let temp = UIButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.setTitle("Decrypt!", for: .normal)
        temp.backgroundColor = .systemRed
        temp.layer.cornerRadius = 25
        temp.setTitleColor(.black, for: .normal)
        temp.addTarget(self, action: #selector(decryptButtonTapped), for: .touchUpInside)
        return temp
    }()
    
    private lazy var buttonStack: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [encryptButton,decryptButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.axis = .horizontal
        temp.alignment = .fill
        temp.distribution = .fillEqually
        temp.spacing = 30
        return temp
    }()
    
    private lazy var textField: UITextField = {
        let temp = UITextField()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.delegate = self
        temp.borderStyle = .roundedRect
        temp.returnKeyType = .done
        temp.autocorrectionType = .no
        temp.placeholder = "Please Enter a String"
        temp.textAlignment = .center
        
        return temp
    }()
    
    lazy var resultTitleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.text = "RESULT"
        temp.font = .systemFont(ofSize: 20, weight: .bold)
        temp.numberOfLines = 0
        temp.textAlignment = .center
        temp.lineBreakMode = .byWordWrapping
        return temp
    }()
    
    lazy var resultLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.text = "aaaaaa "
        temp.textAlignment = .center
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        return temp
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViewElements()
        view.backgroundColor = .systemGroupedBackground
        
//        print(StringModifierWrapper().encryptString("hello world 123123"))
    }
    
    //MARK: - Adding View Components to View
    private func addViewElements() {
        view.addSubview(buttonStack)
        view.addSubview(textField)
        view.addSubview(resultTitleLabel)
        view.addSubview(resultLabel)
        
        NSLayoutConstraint.activate([
        
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonStack.widthAnchor.constraint(equalToConstant: 300),
            buttonStack.heightAnchor.constraint(equalToConstant: 50),
            
            textField.bottomAnchor.constraint(equalTo: buttonStack.topAnchor, constant: -50),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            resultTitleLabel.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 40),
            resultTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            resultLabel.topAnchor.constraint(equalTo: resultTitleLabel.bottomAnchor, constant: 20),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
    //MARK: - Button Actions
    @objc func encryptButtonTapped(sender: UIButton) {
//        StringModifierWrapper().encryptString("")
        sender.startPressedAnimationCommon { finish in
            print("encrypt")
        }
        
    }
    
    @objc func decryptButtonTapped(sender: UIButton) {
//        StringModifierWrapper().decryptString("")
        sender.startPressedAnimationCommon { finish in
            print("decrypt")
        }
    }

}

//MARK: - TextFieldDelegate
extension MainViewController: UITextFieldDelegate {
    
}

//MARK: - UIView - Extension for Button Click Animation
extension UIView {
    
    public func startPressedAnimationCommon(withDuration: CGFloat = 0.3, completion: @escaping (_ finish: Bool) -> Void) {
        
        self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        
        UIView.animate(withDuration: TimeInterval(withDuration),
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.8),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
            
            self.transform = CGAffineTransform.identity
            
        }, completion: completion)
        
        self.layoutIfNeeded()
    }
    
}

//
//  InfoView.swift
//  CreatePDF
//
//  Created by Nikolai  on 16.06.2023.
//

import UIKit

enum ViewType: CaseIterable {
    case name
    case email
    case phone
}

final class InfoView: UIView {
    
    private let titleLable = UILabel(text: "")
    private let infoTextField = InfoTextField()
    private let lineView = UIView()
    private var type: ViewType = .name
    
    var isFailed = false {
        didSet {
            if self.isFailed == true {
                titleLable.textColor = .red
                lineView.backgroundColor = .red
                lineView.alpha = 1
                shake()
            } else {
                titleLable.textColor = .lightGray
                lineView.backgroundColor = .lightGray
                lineView.alpha = 0.2
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureTitleLabel()
        configureInfoTextField()
        configureLineView()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ title: String, type: ViewType) {
        self.init()
        self.titleLable.text = title
        self.type = type
    }
    
    func getText() -> String {
        guard let text = infoTextField.text else { return ""}
        return text
    }
}

//MARK: -

extension InfoView: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        isFailed = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        infoTextField.resignFirstResponder()
    }
}

//MARK: - Setup UI

extension InfoView {
    
    private func configureTitleLabel() {
        addSubview(titleLable)
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            titleLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            titleLable.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    private func configureInfoTextField() {
        infoTextField.delegate = self
        addSubview(infoTextField)
        NSLayoutConstraint.activate([
            infoTextField.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 0),
            infoTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            infoTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            infoTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
    
    private func configureLineView() {
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .lightGray
        lineView.alpha = 0.2
        addSubview(lineView)
        
        NSLayoutConstraint.activate([
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
}

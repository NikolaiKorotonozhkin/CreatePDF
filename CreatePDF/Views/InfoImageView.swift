//
//  InfoImageView.swift
//  CreatePDF
//
//  Created by Nikolai  on 16.06.2023.
//

import UIKit

protocol InfoProtocol: AnyObject {
    func didTap()
}

final class InfoImageView: UIImageView {
    
    weak var delegate: InfoProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        addTap()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .purple
        image = UIImage(systemName: "person.badge.plus")
        tintColor = .white
        contentMode = .center
        layer.cornerRadius = 10
        clipsToBounds = true
    }
}

extension InfoImageView {
    
    private func addTap() {
        let imageViewTap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        isUserInteractionEnabled = true
        addGestureRecognizer(imageViewTap)
    }
    
    @objc private func handleTap() {
        delegate?.didTap()
    }
}

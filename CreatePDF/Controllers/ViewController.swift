//
//  ViewController.swift
//  CreatePDF
//
//  Created by Nikolai  on 16.06.2023.
//

import UIKit

class ViewController: UIViewController {

    private var mainView: MainView? {
        view as? MainView
    }
    
    override func loadView() {
        self.view = MainView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "IOS Junior CV"
    }
    
    @objc func shareButtonTapped() {
        print("shareButtonTapped")
    }
    
    @objc func previewButtonTapped() {
//        checkInfoField()
        guard let mainView else { return }
        let pdfCreator = PDFCreator(name: mainView.getInfoText(.name),
                                    email: mainView.getInfoText(.email),
                                    phone: mainView.getInfoText(.phone),
                                    experience: mainView.getSegmentedIndex(),
                                    image: mainView.getImage())
        
        let pdfPreviewViewController = PDFPreviewViewController()
        pdfPreviewViewController.documentData = pdfCreator.pdfCreateData()
        
        navigationController?.pushViewController(pdfPreviewViewController, animated: true)
    }
    
    private func checkInfoField() -> Bool {
        
        var result = true
        
        for type in ViewType.allCases {
            if mainView?.getInfoText(type) == "" {
                mainView?.setIsFailed(type, true)
                result = false
            } else {
                mainView?.setIsFailed(type, false)
            }
        }
        
        return result
    }

}

//MARK: - InfoProtocol

extension ViewController: InfoProtocol {
    
    func didTap() {
        showPhotoAlert { [weak self] source in
            guard let self = self else { return }
            self.chooseImagePicker(source)
        }
    }
}

//MARK: - UIImagePickerControllerDelegate

extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else { return }
        mainView?.setImage(image)
        dismiss(animated: true)
    }
}

//MARK: - UINavigationControllerDelegate

extension ViewController: UINavigationControllerDelegate {
    
    func chooseImagePicker(_ source: UIImagePickerController.SourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = source
        present(imagePicker, animated: true)
    }
}

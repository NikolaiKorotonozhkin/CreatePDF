//
//  UIViewController + Extension.swift
//  CreatePDF
//
//  Created by Nikolai  on 17.06.2023.
//

import UIKit

extension UIViewController {
    
    func showPhotoAlert(completion: @escaping (UIImagePickerController.SourceType) -> Void) {
        let alertController = UIAlertController(title: nil,
                                                message: nil,
                                                preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            let camera = UIImagePickerController.SourceType.camera
            completion(camera)
        }
        
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { _ in
            let photoLibrary = UIImagePickerController.SourceType.photoLibrary
            completion(photoLibrary)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(camera)
        alertController.addAction(photoLibrary)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true)
    }
}

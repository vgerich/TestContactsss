//
//  GalaryAddImage.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 23/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

extension NewContactCell: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func addImageClick(){
        let alertController = UIAlertController(title: "Choose photo", message: nil, preferredStyle: .actionSheet)
        let photoLibAction = UIAlertAction(title: "Photo", style: .default) { (action) in
            self.chooseImagePicker(source: .photoLibrary)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(photoLibAction)
        alertController.addAction(cancelAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil) 
    }
    func chooseImagePicker (source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            UIApplication.shared.keyWindow?.rootViewController?.present(imagePicker, animated: true, completion: nil)
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageNewContact.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        imageNewContact.contentMode = .scaleAspectFill
        imageNewContact.clipsToBounds = true
        Contact.shared.photo = imageNewContact.image!
       
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
    }
}

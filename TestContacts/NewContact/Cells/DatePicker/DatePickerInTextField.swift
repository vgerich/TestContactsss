//
//  DatePickerInTextField
//  TestContacts
//
//  Created by Владимир Гериханов on 24/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
private var datePicker: UIDatePicker?
extension NewContactRepeatingCell{
    func createDatePicker() {
       
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        let today = Date()
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dateChanged(datePicke:)));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(viewTapped(gestureRecognize:)));
        toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
        datePicker?.maximumDate = today
        firstRepeatingTextField.inputAccessoryView = toolbar
        firstRepeatingTextField.inputView = datePicker
    }
    @objc func viewTapped (gestureRecognize: UITapGestureRecognizer) {
        endEditing(true)
    }
  
    @objc func dateChanged (datePicke: UIDatePicker) {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd.MM.yyyy"
        firstRepeatingTextField.text = dateFormat.string(from: datePicker!.date)
        endEditing(true)
    }
}


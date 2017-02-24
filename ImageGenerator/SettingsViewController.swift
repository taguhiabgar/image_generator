//
//  SettingsViewController.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/24/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        fillPickerData()
    }
    
    private func fillPickerData() {
        for collection in Colors.collections {
            pickerData.append(collection.key)
        }
    }
}

//MARK: - Picker View DataSources and Delegate

extension SettingsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        for item in Colors.collections {
            if item.key == pickerData[row] {
                ViewController.colorCollection = item
                break
            }
        }
    }
}

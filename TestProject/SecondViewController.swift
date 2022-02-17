//
//  SecondViewController.swift
//  TestProject
//
//  Created by User on 16.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textTextField: UITextField!
    
    var delegate: SetTextDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        delegate.setText(with: textTextField)
        dismiss(animated: true)
    }
}

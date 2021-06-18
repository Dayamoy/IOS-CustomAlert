//
//  ViewController.swift
//  UIAlertController
//
//  Created by SRBD on 19/5/21.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var labelText: UILabel!
    @IBAction func buttonTapped(_ sender: UIButton) {
        showAlert()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func showAlert(){
        let alert = UIAlertController(title: "Invalid format", message: "", preferredStyle: .alert)
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default) {[weak self] _ in
            self?.labelText.text = alert.textFields![0].text
        }
        okAction.isEnabled = false
        
        
        alert.addAction(cancelAction)
        alert.addTextField { (textField) in
            textField.placeholder = "Samsung Account or Email Address"
            
            NotificationCenter.default.addObserver(forName: UITextField.textDidChangeNotification, object: textField, queue: OperationQueue.main, using:
                    {_ in
                        let textCount = textField.text?.count ?? 0
                        okAction.isEnabled = textCount >= 10
                })
            
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    


}


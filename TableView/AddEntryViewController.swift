//
//  AddEntryViewController.swift
//  TableView
//
//  Created by Kameron Haramoto on 2/9/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class AddEntryViewController: UIViewController, UITextFieldDelegate {

    var newCharacterReady: Bool = false
    
    @IBOutlet weak var AddEntryTextField: UITextField!
    @IBAction func CancelPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "unwindFromAddEntry", sender: nil)
    }
    
    
    //check to see if text field is empty
    @IBAction func SaveButtonPressed(_ sender: UIBarButtonItem) {
        if(AddEntryTextField.text?.isEmpty)!
        {
            print("empty name")
        }else{
            self.newCharacterReady = true
            performSegue(withIdentifier: "unwindFromAddEntry", sender: nil)
        }
    }
    
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

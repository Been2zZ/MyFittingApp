//
//  FittingRoomViewController.swift
//  MyFittingApp
//
//  Created by 정수빈 on 2018. 12. 7..
//  Copyright © 2018년 201602066. All rights reserved.
//

import UIKit

class FittingRoomViewController: UIViewController {

    @IBOutlet var inputHeight: UITextField!
    @IBOutlet var inputLenght: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchUpMenButton(_ sender:UIButton) {
        print("touch Up Men Button");
    }
    
    @IBAction func touchUpWoMenButton(_ sender:UIButton) {
        print("touch Up WoMen Button");
    }
    
    // 여백 터치시 keyboard 숨기는 기능
    @IBAction func tapBackground(_ sender: UITapGestureRecognizer) {
        print("tap Back ground")
        self.view.endEditing(true)
        
        self.inputHeight.resignFirstResponder()
        self.inputHeight.endEditing(true)
        
        self.inputLenght.resignFirstResponder()
        self.inputLenght.endEditing(true)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: LengthViewController = segue.destination as! LengthViewController
        
        DestViewController.height = Double(inputHeight.text!)!
        DestViewController.length = Double(inputLenght.text!)!
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

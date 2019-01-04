//
// LengthViewController.swift
//  MyFittingApp
//
//  Created by 정수빈 on 2018. 12. 7..
//  Copyright © 2018년 201602066. All rights reserved.
//

import UIKit

class LengthViewController: UIViewController {
    var point_x = 0.0
    var point_y = 0.0
    
    var height = Double()
    var length = Double()
    
    let total_length = 586.0
    let image_y = 100.0
    let faceLen = 90.0
    let bottom = 400.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func drawTop(_ sender: UIButton){
        print(height)
        print(length)
        
        let clothLen = (length * total_length) / height
        
        point_y = clothLen + image_y + faceLen
        
        print(clothLen)

        let newView = UIView(frame: CGRect(x: 100, y: point_y, width: 205, height: 1))
        
        newView.backgroundColor = UIColor.brown
        self.view.addSubview(newView)
    }
    
    @IBAction func drawButtom(_ sender: UIButton){
        
        let clothLen = (length * total_length) / height
        
        point_y = clothLen + bottom
        
        print(point_y)
        let newView = UIView(frame: CGRect(x: 150, y: point_y, width: 100, height: 1))
        newView.backgroundColor = UIColor.purple
        self.view.addSubview(newView)
    }
    
    @IBAction func drawDress(_ sender: UIButton){
       
        let clothLen = (length * total_length) / height
        
        point_y = clothLen + image_y + faceLen
        
        let newView = UIView(frame: CGRect(x: 140, y: point_y, width: 130, height: 1))
        newView.backgroundColor = UIColor.orange
        self.view.addSubview(newView)
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

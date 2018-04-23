//
//  DetailViewController.swift
//  Final Project
//
//  Created by CM Student on 4/16/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    @IBOutlet weak var textView: UITextView!
    
    var textPass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        
        if let textName = textPass {
            textView.text = textName
        }
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

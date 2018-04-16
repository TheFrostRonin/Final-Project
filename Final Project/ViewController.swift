//
//  ViewController.swift
//  Final Project
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var restaurantListTitle: UINavigationItem!
    
    @IBOutlet weak var restaurantTableView: UITableView!
    var mililaniEatsArray = ["Chilis", "Ninja Sushi", "Panda Express", "Loco Moco", "Ruby Tuesday", "Taco Bell"]
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.restaurantTableView.dataSource = self
        
        self.restaurantListTitle.title = "Mililani Eats"
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*func restaurantTableView(_ restaurantTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mililaniEatsArray.count
    }
    func restaurantTableView(_ restaurantTableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: "cellReuselIdentifer")
        let text = mililaniEatsArray[indexpath.row]
        cell?.textLabel?.text = text
        return cell
    
    }*/
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mililaniEatsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = mililaniEatsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath) {
        
        tableView.deselectRow(at: indexpath as IndexPath, animated: true)
    }
}


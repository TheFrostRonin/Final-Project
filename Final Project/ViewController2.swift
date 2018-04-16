//
//  ViewController2.swift
//  Final Project
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController2: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude:21.452201 , longitude: -158.005620)
    
    let regionRadius: CLLocationDistance = 1000
    
    @IBOutlet weak var restaurantListTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "American", type: "Chilis", coordinate: CLLocationCoordinate2D(latitude: 21.451823 , longitude: -158.007218))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Japanese", type: "Ninja Sushi", coordinate: CLLocationCoordinate2D(latitude: 21.453820 , longitude: -158.006024))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Chinese", type: "Panda Express", coordinate: CLLocationCoordinate2D(latitude: 21.452811 , longitude: -158.006162))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Local Food", type: "Loco Moco", coordinate: CLLocationCoordinate2D(latitude: 21.453465 , longitude: -158.005853))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFifth = Restaurant(title: "American", type: "Ruby Tuesday", coordinate: CLLocationCoordinate2D(latitude: 21.455064 , longitude: -158.007272))
        mapView.addAnnotation(restaurantFifth)
        
        let restaurantSixth = Restaurant(title: "Mexican", type: "Taco Bell", coordinate: CLLocationCoordinate2D(latitude: 21.452155, longitude: -158.007491))
        mapView.addAnnotation(restaurantSixth)
        
        self.restaurantListTitle.title = "Restaurant Locations"
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
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

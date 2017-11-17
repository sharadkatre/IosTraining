//
//  DetailViewController.swift
//  PuneLandmark
//
//  Created by Sharad on 17/11/17.
//  Copyright © 2017 Sharad. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    @IBOutlet var detailImageView: UIImageView!
    
    @IBOutlet var detailTitle: UILabel!
    
    @IBOutlet var detailDescription: UILabel!
    
    @IBOutlet var detailTextView: UITextView!
    
    @IBOutlet var detailMapView: MKMapView!
    
    @IBOutlet var directionButton: UIButton!
    
    
    var sendData1: String!
    var sendData2: String!
    var sendData3: String!
    
    var latitude = 0.0
    var longitude = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detailTitle.textColor = UIColor(red: 35/255, green: 90/255, blue: 141/255, alpha: 1.0)
        
        directionButton.backgroundColor = UIColor(red: 35/255, green: 90/255, blue: 141/255, alpha: 1.0)
        directionButton.layer.cornerRadius = 5
        
        detailMapView.layer.cornerRadius = 5
        
        
        detailTitle.text = sendData1
        detailDescription.text = sendData2
        detailImageView.image = UIImage(named: sendData3)
        
        self.navigationItem.title = sendData1
        
        if detailTitle.text == "Shaniwar Wada" {
            
            detailTextView.text = "Shaniwarwada is a historical fortification in the city of Pune in Maharashtra, India. Built in 1732, it was the seat of the Peshwas of the Maratha Empire until 1818, when the Peshwas lost control to the British East India Company after the Third Anglo-Maratha War. Following the rise of the Maratha Empire, the palace became the center of Indian politics in the 18th century."
            
            
            latitude = 18.519538
            longitude = 73.855398
        }
        
        if detailTitle.text == "Pu. La. Deshpande Garden" {
            
            detailTextView.text = "The garden was built in inspiration of 300-year-old Okayama's Kōraku-en Garden, so it is also called as Pune-Okayama Friendship Garden. The garden contains natural flow of water from canal which is been spread across the garden. The garden is well maintained and walking on the lawn is not allowed. \"Pu La Deshpande\" Garden is built on 10 acres. The style is devised in such a way that people can take a walk through a garden enjoying the landscape, which changes along the garden paths."
            latitude = 18.491418
            longitude = 73.836782
            
        }
        
        if detailTitle.text == "Sinhgad Fort" {
            
            detailTextView.text = "Sinhagad is a hill fortress located at around 25 km southwest to the city of Pune, India. Some of the information available at this fort suggests that the fort could have been built 2000 years ago. The caves and the carvings in the Kaundinyeshwar temple stand as proofs for the same."
            
            latitude = 18.366304
            longitude = 73.755876
            
        }
        
        if detailTitle.text == "Pune Express Highway" {
            
            detailTextView.text = "The Mumbai-Pune Expressway is India's first six-lane concrete, high-speed, access controlled tolled expressway. It spans a distance of 94.5 km connecting Mumbai, the administrative capital of Maharashtra state and the financial capital of India, with Pune, an industrial and educational hub."
            
            latitude = 18.769347
            longitude = 73.404267
            
        }
        
        let span = MKCoordinateSpanMake(0.003, 0.003)
        let region =  MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        
        detailMapView.setRegion(region, animated: true)
        detailMapView.mapType = MKMapType.standard

        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)

        let objectAnnotation = MKPointAnnotation()
        
        objectAnnotation.coordinate = pinLocation
        
        objectAnnotation.title = detailTitle.text
        objectAnnotation.subtitle = detailDescription.text
        
        self.detailMapView.addAnnotation(objectAnnotation)
        
        
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

    
    
    @IBAction func getDirection(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!)
        
    }
    
    
    
    
}

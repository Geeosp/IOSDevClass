//
//  ViewController.swift
//  Test
//
//  Created by Geovane Silva Pereira on 3/8/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController,UISearchBarDelegate,MKMapViewDelegate {
    var searchController:UISearchController!
    var annotation:MKAnnotation!
    var localSearchRequest:MKLocalSearchRequest!
    var localSearch:MKLocalSearch!
    var localSearchResponse:MKLocalSearchResponse!
    var error:NSError!
    var pointAnnotation:MKPointAnnotation!
    var pinAnnotationView:MKPinAnnotationView!
    var latitude:Double = 0.0;
    var longitude:Double=0.0;
    @IBOutlet weak var tf_name: UITextField!
    
    
    
    
    @IBAction func showSearchBar(sender: AnyObject) {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchBar.delegate = self
        self.mapView.delegate = self
        presentViewController(searchController, animated: true, completion: nil)
    }
    
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarSearchButtonClicked(searchBar: UISearchBar){
        //1
        searchBar.resignFirstResponder()
        tf_name.text = searchBar.text;
        dismissViewControllerAnimated(true, completion: nil)
        if self.mapView.annotations.count != 0{
            annotation = self.mapView.annotations[0]
            self.mapView.removeAnnotation(annotation)
        }
        //2
        localSearchRequest = MKLocalSearchRequest()
        localSearchRequest.naturalLanguageQuery = searchBar.text
        localSearch = MKLocalSearch(request: localSearchRequest)
        localSearch.startWithCompletionHandler { (localSearchResponse, error) -> Void in
            
            if localSearchResponse == nil{
                let alertController = UIAlertController(title: nil, message: "Place Not Found", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
                return
            }
            //3
            self.pointAnnotation = MKPointAnnotation()
            self.pointAnnotation.title = searchBar.text
            let coordinate = CLLocationCoordinate2D(latitude: localSearchResponse!.boundingRegion.center.latitude, longitude:     localSearchResponse!.boundingRegion.center.longitude)

            self.pointAnnotation.coordinate = coordinate;
            
            self.pinAnnotationView = MKPinAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
            self.mapView.centerCoordinate = self.pointAnnotation.coordinate
            self.mapView.addAnnotation(self.pinAnnotationView.annotation!)
          self.zoomMap(coordinate)
            
            
            
            
            self.latitude = coordinate.latitude;
            self.longitude=coordinate.longitude;
        }
    }
    func zoomMap(coordinate:CLLocationCoordinate2D) {
        let span = MKCoordinateSpanMake(2, 2)
        let region = MKCoordinateRegionMake(coordinate, span)
        self.mapView.setRegion(region, animated: true)    }
    
    
    @IBAction func savePressed(sender: UIBarButtonItem) {
        let name = tf_name.text;
        let city = City(name:name!, latitude:latitude, longitude:longitude);
        
    }
    func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        var center = self.mapView.centerCoordinate
        print("oi");
        print(center.latitude)
        print(center.longitude)
        
        self.pointAnnotation.coordinate = center;
        
        self.pinAnnotationView = MKPinAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
        //self.mapView.centerCoordinate = self.pointAnnotation.coordinate
        self.mapView.addAnnotation(self.pinAnnotationView.annotation!)
       // self.zoomMap(center)
        
        
        
    }


}


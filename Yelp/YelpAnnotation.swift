//
//  YelpAnnotation.swift
//  Yelp
//


import UIKit
import MapKit

class YelpAnnotation: NSObject, MKAnnotation {
  var coordinate: CLLocationCoordinate2D
  
  var photoURL: NSURL?
  var title: String?
  var subtitle: String?
  
  init(title: String, coordinate: CLLocationCoordinate2D, photoURL: NSURL?) {
    self.title = title
    self.coordinate = coordinate
    self.photoURL = photoURL
    super.init()
  }
}

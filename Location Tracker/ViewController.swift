//
//  ViewController.swift
//  Location Tracker
//
//  Created by Deepak on 14/03/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var manager: CLLocationManager!
    var myLocations:[CLLocation] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        //Setup location manager
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()

        //Setup mapview
        mapView.delegate = self
        mapView.mapType = MKMapType.Satellite
        mapView.showsUserLocation = true
    }

    // MARK: - LOCATION MANAGER REGION DELEGATES
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {

    }
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {

    }
    func locationManager(manager: CLLocationManager, didStartMonitoringForRegion region: CLRegion) {

    }
    func locationManager(manager: CLLocationManager, monitoringDidFailForRegion region: CLRegion?, withError error: NSError) {

    }
    func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, forRegion region: CLRegion) {

    }

    // MARK: - LOCATION MANAGER BEACONS DELEGATES
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {

    }
    func locationManager(manager: CLLocationManager, rangingBeaconsDidFailForRegion region: CLBeaconRegion, withError error: NSError) {
        
    }

    // MARK: - LOCATION MANAGER HEADING DELEGATES

    func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {

    }
    func locationManagerShouldDisplayHeadingCalibration(manager: CLLocationManager) -> Bool {
        return true
    }

    // MARK: - LOCATION MANAGER CORE DELEGATES
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {

    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        descriptionLabel.text = "\(locations[0])"
        myLocations.append(locations[0] as CLLocation)

        let spanX = 0.007
        let spanY = 0.007
        let newRegion = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: MKCoordinateSpanMake(spanX, spanY))
        mapView.setRegion(newRegion, animated: true)

        if myLocations.count > 1
        {
//            var sourceIndex = myLocations.count - 1
//            var destinationIndex = myLocations.count - 2

            let c1 = myLocations[0].coordinate
            let c2 = myLocations[myLocations.count - 1].coordinate

            var a = [c1, c2]
            let polyline = MKPolyline(coordinates: &a, count: a.count)
            mapView.addOverlay(polyline)
        }
    }

    func locationManagerDidPauseLocationUpdates(manager: CLLocationManager) {

    }
    func locationManagerDidResumeLocationUpdates(manager: CLLocationManager) {

    }
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {

    }

    func locationManager(manager: CLLocationManager, didVisit visit: CLVisit) {

    }
    func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: NSError?) {

    }
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {

    }

    // MARK: - MAPVIEW DELEGATES
    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        if overlay is MKPolyline {
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.blueColor()
            polylineRenderer.lineWidth = 4
            return polylineRenderer
        }
        return nil
    }

    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        return nil
    }
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {

    }
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {

    }
    func mapViewWillStartRenderingMap(mapView: MKMapView) {

    }
    func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool) {

    }
    func mapView(mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer]) {

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}


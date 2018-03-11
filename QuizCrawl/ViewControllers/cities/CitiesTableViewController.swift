//
//  CitiesTableViewController.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit
import CoreLocation

class CitiesTableViewController: UITableViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager = CLLocationManager()
    var currentLocation: CLLocation?
    var cities: [City] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLocationManager()
        title = "citiesTitle".localized
        tableView.separatorStyle = .none
    }

    private func setUpLocationManager() {
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }

    private func loadCities(currentLoaction: CLLocation) {
        let helper = CityHelper()
        cities = helper.getAllCities()
        cities.sort(by: { $0.distance(to: currentLoaction) < $1.distance(to: currentLoaction) })
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count * 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 != 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "separatorCell", for: indexPath) as! SeparatorTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! CityCell

            let adjustedIndex = adjustedIndexpath(atIndex: indexPath.row)
            let city = cities[adjustedIndex]

            cell.cityImageview.image = city.image
            if currentLocation != nil {
                let distance = Int(city.distance(to: currentLocation!) / 1000)
                cell.distanceLabel.text = setDistanceLabel(distance: distance)
            }
            cell.cityNameLabel.text = "\(city.cityName)"
            return cell
        }
    }

    private func adjustedIndexpath(atIndex: Int) -> Int {
        return atIndex / 2
    }

    //    if dataController.isEmpty {
    //    let messageCell = tableView.dequeueNibReusableCell(forIndexPath: indexPath) as MessageTableViewCell
    //    messageCell.configure(message: "tappingproblem.placeholderlabel.nog_geen_sessies".localized)
    //    // Selection style
    //    return messageCell
    //    } else if  indexPath.row % 2 != 0 {
    //    let cell = tableView.dequeueReusableCell(withIdentifier: "SeparatorCell", for: indexPath)
    //    cell.backgroundColor = .clear
    //    // selectionstyle
    //    return cell
    //    } else {
    //    let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as TappingProblemCell
    //    let adjustedIndex = adjustedIndexpath(atIndex: indexPath.row)
    //    guard let tappingProblem = dataController.tappingProblems?[adjustedIndex] else { return cell }
    //    cell.configure(withProblem: tappingProblem)
    //    return cell
    //    }

    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 != 0 {
            return 14
        } else {
            return UITableViewAutomaticDimension
        }
    }

    private func setDistanceLabel(distance: Int) -> String {
        if distance < 10 {
            return "isOnLocation".localized
        } else {
            return "\(distance) km"
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastLocation = locations.last else { return }
        locationManager.stopUpdatingLocation()
        currentLocation = lastLocation
        loadCities(currentLoaction: lastLocation)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toRoutesSegue" {
            let destination = segue.destination as? RoutesTableViewController
            guard let index = tableView.indexPathForSelectedRow?.row else { return }
            destination?.selectedCity = cities[index]
        }
    }
}

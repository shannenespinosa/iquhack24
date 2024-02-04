//
//  PatientCenterViewController.swift
//  iQuHack-Organ-Donations
//
//  Created by Siona Tagare on 2/3/24.
//

import UIKit
//import Firebase

class PatientCenterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patientNames.count
    }
    

    @IBOutlet weak var PatientTableView: UITableView!
    
    var patientNames: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        PatientTableView.delegate = self
        PatientTableView.dataSource = self
        
        addPatients()
        
//        FirebaseApp.configure()
        
        
        PatientTableView.estimatedRowHeight = 700
        PatientTableView.rowHeight = UITableView.automaticDimension
        PatientTableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let results = tableView.dequeueReusableCell(withIdentifier: "results", for: indexPath) as! PatientTableViewCell
        
        PatientTableView.autoresizingMask = UIView.AutoresizingMask.flexibleHeight;
        PatientTableView.bounces = true;
        
        results.nameLabel.numberOfLines = 0
        results.nameLabel.text = patientNames[indexPath.row]
        results.nameLabel.lineBreakMode = .byWordWrapping
        return results
    }
    
    func addPatients() {
        patientNames.append("jane doe 1")
        patientNames.append("jane doe 2")
        patientNames.append("jane doe 3")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

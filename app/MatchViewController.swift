//
//  MatchViewController.swift
//  iQuHack-Organ-Donations
//
//  Created by Siona Tagare on 2/4/24.
//

import UIKit

class MatchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var patientNames: [String] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.patientNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "YourCellIdentifier", for: indexPath) as! CollectionViewCell

//        collectionView.autoresizingMask = UIView.AutoresizingMask.flexibleHeight;
//        collectionView.bounces = true;
        
//        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.text = patientNames[indexPath.row]
//        cell.titleLabel.lineBreakMode = .byWordWrapping
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the data source and delegate
        
//        // Register your custom cell class
//        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "YourCellIdentifier")
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        
    func addPatients() {
        patientNames.append("jane doe 1")
        patientNames.append("jane doe 2")
//        patientNames.append("jane doe 3")
    }
        

}

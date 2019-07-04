//
//  ClinicalTrialListViewController.swift
//  ClinTrials
//
//  Created by Richard de Borja on 2019-07-03.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import UIKit

class ClinicalTrialListViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var clinicalTrialTableView: UITableView!
    var clinicalTrials: [ClinicalTrial] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleClinicalTrials()
        clinicalTrialTableView.delegate = self
        clinicalTrialTableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: Private methods
    private func loadSampleClinicalTrials() {
        
        guard let clinicalTrial1 = ClinicalTrial(city: "Toronto", institute: "Princess Margaret Cancer Centre", isActive: true, startDate: nil, endDate: nil) else {
            fatalError("Unable to instantiate clinical trial")
        }
        
        guard let clinicalTrial2 = ClinicalTrial(city: "Boston", institute: "Boston Childrens Hospital", isActive: true, startDate: nil, endDate: nil) else {
            fatalError("Unable to instantiate clinical trial")
        }
        
        guard let clinicalTrial3 = ClinicalTrial(city: "Toronto", institute: "The Ontario Institute for Cancer Research", isActive: true, startDate: nil, endDate: nil) else {
            fatalError("Unable to instantiate clinical trial")
        }
        
        guard let clinicalTrial4 = ClinicalTrial(city: "Boston", institute: "Dana Farber", isActive: true, startDate: nil, endDate: nil) else {
            fatalError("Unable to instantiate clinical trial")
        }
        
        clinicalTrials += [clinicalTrial1, clinicalTrial2, clinicalTrial3, clinicalTrial4]
    }
}


extension ClinicalTrialListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clinicalTrials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let clinicalTrial = clinicalTrials[indexPath.row]
        
        let cellIdentifier = "ClinicalTrialCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ClinicalTrialCell else {
            fatalError("Cannot dequeue cell")
        }
        
        cell.clinicalTrialTitle.text = clinicalTrial.institute
        cell.clinicalTrialLocation.text = clinicalTrial.city

        print(clinicalTrial.city)
        print(clinicalTrial.institute)

        return cell
    }
}

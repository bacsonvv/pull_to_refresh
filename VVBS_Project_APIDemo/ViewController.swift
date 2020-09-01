//
//  ViewController.swift
//  VVBS_Project_APIDemo
//
//  Created by Vuong Vu Bac Son on 8/31/20.
//  Copyright © 2020 Vuong Vu Bac Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var userData: [UserInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(InformationCell.nib(), forCellReuseIdentifier: InformationCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        print("aloalo")
        
        fetchData()
    }

    func fetchData() {
        let url = URL(string: "http://demo0737597.mockable.io/master_data")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let userInfo = data {
                    let decodedData = try JSONDecoder().decode([UserInfo].self, from: userInfo)
                    DispatchQueue.main.sync {
                        self.userData = decodedData
                        print("Success")
                    }
                    
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: InformationCell.identifier) as! InformationCell
        return cell
    }
}

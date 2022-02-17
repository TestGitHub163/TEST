//
//  FirstViewController.swift
//  TestProject
//
//  Created by User on 31.01.2022.
//

import UIKit

protocol SetTextDelegate {
    func setText(with text:UITextField)
}

class FirstViewController: UIViewController {

    var arrayReviews:[String] = ["d"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(arrayReviews.count)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.delegate = self
    }
    
    @IBAction func saveButton() {
        
    }
    
    
    

    
}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayReviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = arrayReviews[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
}

extension FirstViewController: SetTextDelegate {
    func setText(with text: UITextField) {
        arrayReviews.append(text.text!)
    }
}


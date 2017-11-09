//
//  ViewController.swift
//  Binary Counter
//
//  Created by Patrick Hayes on 11/8/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var total = 0
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryTableViewCell
        cell.delegate = self
        cell.valueLabel.text = String(describing: pow(10, indexPath.row))
        
        return cell
    }
}

extension ViewController: BinaryTableViewCellDelegate{
    func valueChangedBy(value: Int) {
        
        self.total += value

        totalLabel.text = "Total: \(self.total)"
    }
}

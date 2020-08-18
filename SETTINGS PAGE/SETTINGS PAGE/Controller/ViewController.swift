//
//  ViewController.swift
//  SETTINGS PAGE
//
//  Created by sentieo on 07/08/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    var rowData = RowDataBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate=self
        
        }

}



extension ViewController:UITableViewDelegate{
    
    
}



extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return rowData.secRow[section]!
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return rowData.secRow.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(rowData.rowData[indexPath.section][indexPath.row].title)
//        let secondViewController = self.storyboard!.instantiateViewController(withIdentifier: "\(rowData.rowData[indexPath.section][indexPath.row])")
//        self.navigationController!.pushViewController(secondViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if(rowData.rowData[indexPath.section][indexPath.row].type==0){
            cell = tableView.dequeueReusableCell(withIdentifier: "\(rowData.rowData[indexPath.section][indexPath.row].type)", for: indexPath)
        }else{
            cell = tableView.dequeueReusableCell(withIdentifier: "\(rowData.rowData[indexPath.section][indexPath.row].type)", for: indexPath) 
        }
        
//        print(indexPath.row)
        
        cell.textLabel!.text = rowData.rowData[indexPath.section][indexPath.row].title
       
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return rowData.headerData[section]
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "header") as! HeaderCell
////        cell.headerLabel.text="data"
//        return cell
//    }
    
    
    
}


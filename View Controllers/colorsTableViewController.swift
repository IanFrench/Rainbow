//
//  colorsTableViewController.swift
//  Rainbow project
//
//  Created by Ian French on 4/7/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit

class colorsTableViewController: UITableViewController {

   
    var colors: [Color] = [
        Color(colorName: "Red" , color .red),
        Color(colorName: "Orange" , color: .orange),
        Color(colorName: "Yellow" , color: .yellow),
        
        

    
    
    
    ]
    
    
    
    
    
    // MARK: - Table view data source

// this is required  -how many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }

    // this is also required  - what data is in each row?
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = color.colorName
        cell.backgroundColor = color.color
        
        // 1. get current color for each row   Index path has section and row   (0, 0)    (0, 1)
        
        let color = colors[indexPath.row]
        
        
        
        // Configure the cell...

        return cell
    }
    

 

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ToDetailCell"  {
            if let detailVC = segue.destination as? ColorDetailViewController,
                let indexPath = self.tableView.indexPathForSelectedRow
            {
                detailVC.cellColor = colors[indexPath.row]
            }
        }
        
        
        
        // Pass the selected object to the new view controller.
    }
  

}

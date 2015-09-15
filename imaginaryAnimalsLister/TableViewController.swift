//
//  TableViewController.swift
//  imaginaryAnimalsLister
//
//  Created by Leo Yu on 9/14/15.
//  Copyright © 2015 Yu, Leo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var animalsArray:[ImaginaryAnimal];
    
    //? failable initializer - if it fails, it returns a nil ; thats why ?
    required init?(coder aDecoder: NSCoder)
    {
        //let testAnimal = ImaginaryAnimal(name: "Mermaid", height: 1.5,  location: "Oceans", dateLastSeen: "1858", imageURL:nil);
        
        animalsArray = AnimalsLoader().loadAnimals();
        //animalsArray = [];
        super.init(coder: aDecoder);
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalsArray.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...
        let animal = animalsArray[indexPath.row];
        
        //option cell - can be nil
        cell.textLabel?.text = "\(indexPath.row + 1). \(animal.name)";

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //making sure index has a value
        if let destinationViewController = segue.destinationViewController as? DetailViewController,
            let selectedIndex = self.tableView.indexPathForSelectedRow?.row
        {
            let selectedAnimal = animalsArray[selectedIndex];
            destinationViewController.animal = selectedAnimal;
        }
        
    }
    

}

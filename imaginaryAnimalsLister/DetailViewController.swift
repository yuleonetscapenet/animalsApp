//
//  DetailViewController.swift
//  imaginaryAnimalsLister
//
//  Created by Leo Yu on 9/14/15.
//  Copyright © 2015 Yu, Leo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var animal: ImaginaryAnimal?
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var LocationLabel: UILabel!
    
    
    @IBOutlet weak var DateLateSeen: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad() ;
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)) { () -> Void in
            if let url = self.animal?.imageURL,
                let imageData = NSData(contentsOfURL: url)
            {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.imageView.image = UIImage(data: imageData);
                })
            }
        }
//        if let url = animal?.imageURL,
//            let imageData = NSData(contentsOfURL: url)
//        {
//            self.imageView.image = UIImage(data: imageData);
//        }
        
            self.nameLabel!.text = animal?.name;
            
            let height = animal?.height;
            self.heightLabel!.text = String(height!);
            
            self.LocationLabel!.text = animal?.location;
            
            self.DateLateSeen!.text = animal?.dateLastSeen;
            
            
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
        }
    }
    
    //    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  FirstViewController.swift
//  BCITApp
//
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var objects = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.objects.append("BCIT")
        self.objects.append("BCIT")
        self.objects.append("BCIT")
        self.objects.append("BCIT")
        self.objects.append("BCIT")
        self.objects.append("BCIT")
        self.objects.append("BCIT")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section:
        Int) -> Int
    {
        return self.objects.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // Allocates a Table View Cell
        let aCell =
        self.tableView.dequeueReusableCellWithIdentifier("cell",
            forIndexPath: indexPath) as! TableViewCell
        // Sets the text of the Label in the Table View Cell
        aCell.titleLabel.text = self.objects[indexPath.row]
        return aCell
    }
}



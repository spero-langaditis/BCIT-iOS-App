//
//  SecondViewController.swift
//  BCITApp
//
//

import UIKit

class CoursesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var objects = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.objects.append("COMP 4977")
        self.objects.append("COMP 4711")
        self.objects.append("BLAW 3600")
        self.objects.append("COMP 4976")
        self.objects.append("COMP 4560")
        self.objects.append("COMP 4735")
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
            forIndexPath: indexPath) as! CourseTableViewCell
        // Sets the text of the Label in the Table View Cell
        aCell.courseTitle.text = self.objects[indexPath.row]
        return aCell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("showCourse", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?)
    {
        if (segue.identifier == "showCourse")
        {
            // upcoming is set to NewViewController (.swift)
            let upcoming: CourseViewController = segue.destinationViewController
                as! CourseViewController
            // indexPath is set to the path that was tapped
            let indexPath = self.tableView.indexPathForSelectedRow!
            // titleString is set to the title at the row in the objects array.
            let titleString = self.objects[indexPath.row]
            // the titleStringViaSegue property of NewViewController is set.
            upcoming.titleStringViaSegue = titleString
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }

}

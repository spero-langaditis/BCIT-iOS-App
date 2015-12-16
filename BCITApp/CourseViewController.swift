//
//  CourseViewController.swift
//  BCITApp
//
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var courseTitle: UILabel!
    var titleStringViaSegue: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.titleStringViaSegue
        self.courseTitle.text = self.titleStringViaSegue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

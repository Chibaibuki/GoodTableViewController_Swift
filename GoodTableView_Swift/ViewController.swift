//
//  ViewController.swift
//  GoodTableView_Swift
//
//  Created by 高向孚 on 5/8/16.
//  Copyright © 2016 ByStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let aTableView = UITableView(frame:UIScreen.mainScreen().bounds);
        aTableView.delegate = self;
        aTableView.dataSource = self;
        
        self.view.addSubview(aTableView);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let myCellIdentifier = "MyCellIdentifier";
        var aCell:UITableViewCell?;
        aCell = tableView.dequeueReusableCellWithIdentifier(myCellIdentifier);
       if aCell == nil{
            aCell = UITableViewCell(style: UITableViewCellStyle.Default , reuseIdentifier: myCellIdentifier);
            aCell?.textLabel?.text = "haha";
        }
        return aCell ?? UITableViewCell();
    }
    
}


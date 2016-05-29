//
//  ReviewsTableDataSource.swift
//  Yelp
//

import UIKit

class ReviewsTableController: NSObject, UITableViewDataSource {
  var table: UITableView!
  var business: Business
  
  init(table: UITableView, business: Business) {
    self.table = table
    self.business = business
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.business.reviews?.count ?? 0
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = table.dequeueReusableCellWithIdentifier("reviewCell") as! ReviewTableCell
    cell.review = self.business.reviews?[indexPath.row]
    return cell
  }
}

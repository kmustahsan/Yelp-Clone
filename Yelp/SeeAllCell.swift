//
//  SeeAllCell.swift
//  Yelp
//


import UIKit

protocol SeeAllCellDelegate: class {
  func onSeeAllTapped(seeAllCell: SeeAllCell)
}

class SeeAllCell: UITableViewCell {
  
  var delegate: SeeAllCellDelegate?
  @IBAction func seeAllTapped(sender: AnyObject) {
    delegate?.onSeeAllTapped(self)
  }
}

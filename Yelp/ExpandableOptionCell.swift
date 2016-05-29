//
//  ExpandableOptionCell.swift
//  Yelp
//


import UIKit

protocol ExpandableOptionDelegate: class {
  func onExpand(expandableOptionCell: ExpandableOptionCell)
}

class ExpandableOptionCell: UITableViewCell {

  @IBOutlet weak var cellView: UIView!
  @IBOutlet weak var optionLabel: UILabel!
  @IBOutlet weak var buttonView: UIView!
  @IBOutlet weak var mainButton: UIButton!
  
  var delegate: ExpandableOptionDelegate?
  var forIndexPath: NSIndexPath?
  
  func initializeCell(delegate:ExpandableOptionDelegate, forIndexPath:NSIndexPath, name:String) {
    self.delegate = delegate
    self.forIndexPath = forIndexPath
    self.optionLabel.text = name
    self.mainButton.setImage(UIImage(named: "DownCarat"), forState: .Normal)
    
    let tapRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(ExpandableOptionCell.onCellTapped(_:)))
    tapRecognizer.numberOfTapsRequired = 1
    cellView.userInteractionEnabled = true
    cellView.addGestureRecognizer(tapRecognizer)
  }
  
  func onCellTapped(sender: UITapGestureRecognizer) {
    delegate?.onExpand(self)
  }
    
  @IBAction func buttonTapped(sender: AnyObject) {
    delegate?.onExpand(self)
  }
}

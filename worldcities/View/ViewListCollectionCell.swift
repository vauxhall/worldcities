import UIKit

class ViewListCollectionCell:UICollectionViewCell
{
    static let reusableIdentifier:String = "listCell"
    private weak var label:UILabel!
    private let kFontSize:CGFloat = 16
    private let kLabelMarginHorizontal:CGFloat = 15
    
    override init(frame:CGRect)
    {
        super.init(frame:CGRect.zero)
        clipsToBounds = true
        
        let label:UILabel = UILabel()
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.clear
        label.font = UIFont.systemFont(ofSize:kFontSize)
        self.label = label
        
        addSubview(label)
        
        NSLayoutConstraint(
            item:label,
            attribute:NSLayoutAttribute.top,
            relatedBy:NSLayoutRelation.equal,
            toItem:self,
            attribute:NSLayoutAttribute.top,
            multiplier:1,
            constant:0).isActive = true
        NSLayoutConstraint(
            item:label,
            attribute:NSLayoutAttribute.bottom,
            relatedBy:NSLayoutRelation.equal,
            toItem:self,
            attribute:NSLayoutAttribute.bottom,
            multiplier:1,
            constant:0).isActive = true
        NSLayoutConstraint(
            item:label,
            attribute:NSLayoutAttribute.left,
            relatedBy:NSLayoutRelation.equal,
            toItem:self,
            attribute:NSLayoutAttribute.left,
            multiplier:1,
            constant:kLabelMarginHorizontal).isActive = true
        NSLayoutConstraint(
            item:label,
            attribute:NSLayoutAttribute.right,
            relatedBy:NSLayoutRelation.equal,
            toItem:self,
            attribute:NSLayoutAttribute.right,
            multiplier:1,
            constant:-kLabelMarginHorizontal).isActive = true
    }
    
    required init?(coder:NSCoder)
    {
        return nil
    }
    
    override var isSelected:Bool
    {
        didSet
        {
            displayState()
        }
    }
    
    override var isHighlighted:Bool
    {
        didSet
        {
            displayState()
        }
    }
    
    //MARK: private
    
    private func displayState()
    {
        if isSelected || isHighlighted
        {
            label.textColor = UIColor.white
            backgroundColor = UIColor.blue
        }
        else
        {
            label.textColor = UIColor.black
            backgroundColor = UIColor.white
        }
    }
    
    //MARK: internal
    
    func config(model:ModelListItem)
    {
        label.text = model.displayString
        displayState()
    }
}

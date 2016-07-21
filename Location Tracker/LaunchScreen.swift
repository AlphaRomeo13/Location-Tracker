import Foundation
import UIKit

class LaunchScreen: UIView {

    @IBOutlet weak var activityIndicatorView: DTIActivityIndicatorView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.showActivityIndicator()
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }



    func showActivityIndicator()
    {
        activityIndicatorView.indicatorColor = UIColor.whiteColor()
        activityIndicatorView.indicatorStyle = DTIIndicatorStyle.convInv(DTIIndicatorStyle.chasingDots)
        activityIndicatorView.startActivity()
    }
}
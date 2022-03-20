import UIKit

class PageyView: UIView {
  
  let conrol = UIPageControl()

  override init(frame: CGRect) {
    super.init(frame: frame)
    conrol.translatesAutoresizingMaskIntoConstraints = false
    addSubview(conrol)
    conrol.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    conrol.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
  }

}

extension UIColor {
  convenience init(hex: String) {
    let scanner = Scanner(string: hex)
    scanner.scanLocation = 0
    
    var rgbValue: UInt64 = 0
    
    scanner.scanHexInt64(&rgbValue)
    
    let r = (rgbValue & 0xff0000) >> 16
    let g = (rgbValue & 0xff00) >> 8
    let b = rgbValue & 0xff
    
    self.init(
      red: CGFloat(r) / 0xff,
      green: CGFloat(g) / 0xff,
      blue: CGFloat(b) / 0xff, alpha: 1
    )
  }
}
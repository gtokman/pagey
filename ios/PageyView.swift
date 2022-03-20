import UIKit

class PageyView: UIView {
  
  let conrol = UIPageControl()

  convenience init(frame: CGRect, pageCount: Int, currentPage: Int, tintColor: UIColor, currentPageColor: UIColor) {
    self.init(frame: frame)
    conrol.numberOfPages = pageCount
    conrol.currentPage = currentPage
    conrol.pageIndicatorTintColor = tintColor
    conrol.currentPageIndicatorTintColor = currentPageColor
    conrol.translatesAutoresizingMaskIntoConstraints = false
    addSubview(conrol)
    conrol.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    conrol.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
  }

}

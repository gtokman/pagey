import ExpoModulesCore
import UIKit

public class PageyModule: Module {
  public func definition() -> ModuleDefinition {
    name("Pagey")

    function("helloAsync") { (options: [String: String]) in
      print("Hello \(options) 👋")
      return "Hello 👋"
    }

    viewManager {
      view {
        UIPageControl()
      }

      prop("numberOfPages") { (view: UIPageControl, prop: Int) in
        print(prop)
        view.numberOfPages = prop
      }

      prop("currentPage") { (view: UIPageControl, prop: Int) in
        print(prop)
        view.currentPage = prop
      }

      prop("backgroundColor") { (view: UIPageControl, prop: String) in
        print(prop)
        view.pageIndicatorTintColor = UIColor(hex: prop)
      }

      prop("currentPageColor") { (view: UIPageControl, prop: String) in
        print(prop)
        view.currentPageIndicatorTintColor = UIColor(hex: prop)
      }
    }
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
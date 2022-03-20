import ExpoModulesCore

public class PageyModule: Module {
  public func definition() -> ModuleDefinition {
    name("Pagey")

    function("helloAsync") { (options: [String: String]) in
      print("Hello 👋")
      return "Hello 👋"
    }

    viewManager {
      view {
        PageyView()
      }

      prop("numberOfPages") { (view: PageyView, prop: Int) in
        print(prop)
        view.conrol.numberOfPages = prop
      }

      prop("currentPage") { (view: PageyView, prop: Int) in
        print(prop)
        view.conrol.currentPage = prop
      }

      prop("backgroundColor") { (view: PageyView, prop: String) in
        print(prop)
        view.conrol.pageIndicatorTintColor = UIColor(hex: prop)
      }

      prop("currentPageColor") { (view: PageyView, prop: String) in
        print(prop)
        view.conrol.currentPageIndicatorTintColor = UIColor(hex: prop)
      }
    }
  }
}

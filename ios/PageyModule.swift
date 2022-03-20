import ExpoModulesCore

public class PageyModule: Module {
  public func definition() -> ModuleDefinition {
    name("Pagey")

    function("helloAsync") { (options: [String: String]) in
      print("Hello 👋")
    }

    viewManager {
      view {
        PageyView()
      }

      prop("name") { (view: PageyView, prop: String) in
        print(prop)
      }
    }
  }
}

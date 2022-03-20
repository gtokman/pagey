package expo.modules.pagey

import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition

class PageyModule : Module() {
  override fun definition() = ModuleDefinition {
    name("Pagey")

    function("helloAsync") { options: Map<String, String> ->
      println("Hello 👋")
    }

    viewManager {
      view { context -> 
        PageyView(context) 
      }

      prop("name") { view: PageyView, prop: String ->
        println(prop)
      }
    }
  }
}

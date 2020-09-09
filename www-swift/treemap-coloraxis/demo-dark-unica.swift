import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["heatmap", "treemap"]

    let options = HIOptions()

    let colorAxis = HIColorAxis()
    colorAxis.minColor = HIColor(hexValue: "FFFFFF")
    colorAxis.maxColor = HIColor(hexValue: "2f7ed8")
    options.colorAxis = [colorAxis]

    let title = HITitle()
    title.text = "Highcharts Treemap"
    options.title = title

    let treemap = HITreemap()
    treemap.layoutAlgorithm = "squarified"

    let a = HIData()
    a.name = "A"
    a.value = 6
    a.colorValue = 1

    let b = HIData()
    b.name = "B"
    b.value = 6
    b.colorValue = 2

    let c = HIData()
    c.name = "C"
    c.value = 4
    c.colorValue = 3

    let d = HIData()
    d.name = "D"
    d.value = 3
    d.colorValue = 4

    let e = HIData()
    e.name = "E"
    e.value = 2
    e.colorValue = 5

    let f = HIData()
    f.name = "F"
    f.value = 2
    f.colorValue = 6

    let g = HIData()
    g.name = "G"
    g.value = 1
    g.colorValue = 7

    treemap.data = [a, b, c, d, e, f, g]

    options.series = [treemap]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"
    chartView.plugins = ["xrange"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts X-range"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.descriptionFormatter = HIFunction(jsFunction: "function (point) { var ix = point.index + 1, category = point.yCategory, from = new Date(point.x), to = new Date(point.x2); return ix + '. ' + category + ', ' + from.toDateString() + ' to ' + to.toDateString() + '.'; }")
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.type = "datetime"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = ""
    yAxis.categories = ["Prototyping", "Development", "Testing"]
    yAxis.reversed = true
    options.yAxis = [yAxis]

    let xrange = HIXrange()
    xrange.name = "Project 1"
    // xrange.pointPadding = 0
    // xrange.groupPadding = 0
    xrange.borderColor = HIColor(name: "gray")
    xrange.pointWidth = 20
    xrange.data = [
      [
        "x": 1416528000000,
        "x2": 1417478400000,
        "y": 0,
        "partialFill": 0.25
      ], [
        "x": 1417478400000,
        "x2": 1417737600000,
        "y": 1
      ], [
        "x": 1417996800000,
        "x2": 1418083200000,
        "y": 2
      ], [
        "x": 1418083200000,
        "x2": 1418947200000,
        "y": 1
      ], [
        "x": 1418169600000,
        "x2": 1419292800000,
        "y": 2
      ]
    ]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    xrange.dataLabels = [dataLabels]

    options.series = [xrange]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

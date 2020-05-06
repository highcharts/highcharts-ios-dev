import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let title = HITitle()
    title.text = "Logarithmic axis demo"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.tickInterval = 1
    xAxis.type = "logarithmic"
    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.rangeDescription = "Range: 1 to 10"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.type = "logarithmic"
    yAxis.minorTickInterval = 0.1
    yAxis.accessibility = HIAccessibility()
    yAxis.accessibility.rangeDescription = "Range: 0.1 to 1000"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{series.name}</b><br />"
    tooltip.pointFormat = "x = {point.x}, y = {point.y}"
    options.tooltip = tooltip

    let series = HISeries()
    series.data = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
    series.pointStart = 1

    options.series = [series]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

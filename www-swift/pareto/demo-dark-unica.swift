import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["pareto"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Restaurants Complaints"
    options.title = title

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let xAxis = HIXAxis()
    xAxis.categories = [
      "Overpriced",
      "Small portions",
      "Wait time",
      "Food is tasteless",
      "No atmosphere",
      "Not clean",
      "Too noisy",
      "Unfriendly staff"
    ]
    xAxis.crosshair = HICrosshair()
    options.xAxis = [xAxis]

    let yAxis1 = HIYAxis()
    yAxis1.title = HITitle()
    yAxis1.title.text = ""

    let yAxis2 = HIYAxis()
    yAxis2.title = HITitle()
    yAxis2.title.text = ""
    yAxis2.minPadding = 0
    yAxis2.maxPadding = 0
    yAxis2.max = 100
    yAxis2.min = 0
    yAxis2.opposite = true
    yAxis2.labels = HILabels()
    yAxis2.labels.format = "{value}%"

    options.yAxis = [yAxis1, yAxis2]

    let pareto = HIPareto()
    pareto.name = "Pareto"
    pareto.yAxis = 1
    pareto.zIndex = 10
    pareto.baseSeries = 1
    pareto.tooltip = HITooltip()
    pareto.tooltip.valueDecimals = 2
    pareto.tooltip.valueSuffix = "%"

    let complaints = HIColumn()
    complaints.name = "Complaints"
    complaints.zIndex = 2
    complaints.data = [755, 222, 151, 86, 72, 51, 36, 10]

    options.series = [pareto, complaints]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

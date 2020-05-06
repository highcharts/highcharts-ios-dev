import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "areaspline"
    options.chart = chart

    let title = HITitle()
    title.text = "Average fruit consumption during one week"
    options.title = title

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "left"
    legend.verticalAlign = "top"
    legend.x = 150
    legend.y = 100
    legend.floating = true
    legend.borderWidth = 1
    legend.backgroundColor = HIColor(hexValue: "FFFFFF")
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.categories = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    let plotBand = HIPlotBands()
    plotBand.from = 4.5
    plotBand.to = 6.5
    plotBand.color = HIColor(name: "rgba(68, 170, 213, .2)")
    xAxis.plotBands = [plotBand]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Fruit units"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.shared = true
    tooltip.valueSuffix = " units"
    options.tooltip = tooltip

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let plotOptions = HIPlotOptions()
    plotOptions.area = HIArea()
    plotOptions.area.fillOpacity = 0.5
    options.plotOptions = plotOptions

    let john = HIAreaspline()
    john.name = "John"
    john.data = [3, 4, 3, 5, 4, 10, 12]

    let jane = HIAreaspline()
    jane.name = "Jane"
    jane.data = [1, 3, 4, 3, 3, 5, 4]

    options.series = [john, jane]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

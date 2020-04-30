import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "area"
    chart.inverted = true
    options.chart = chart

    let title = HITitle()
    title.text = "Average fruit consumption during one week"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.keyboardNavigation = HIKeyboardNavigation()
    accessibility.keyboardNavigation.seriesNavigation = HISeriesNavigation()
    accessibility.keyboardNavigation.seriesNavigation.mode = "serialize"
    options.accessibility = accessibility

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "right"
    legend.verticalAlign = "top"
    legend.x = -150
    legend.y = 100
    legend.floating = true
    legend.borderWidth = 1
    legend.backgroundColor = HIColor(hexValue: "FFFFFF")
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.categories = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Number of units"
    yAxis.allowDecimals = false
    yAxis.min = 0
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.area = HIArea()
    plotOptions.area.fillOpacity = 0.5
    options.plotOptions = plotOptions

    let john = HIArea()
    john.name = "John"
    john.data = [3, 4, 3, 5, 4, 10, 12]

    let jane = HIArea()
    jane.name = "Jane"
    jane.data = [1, 3, 4, 3, 3, 5, 4]

    options.series = [john, jane]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

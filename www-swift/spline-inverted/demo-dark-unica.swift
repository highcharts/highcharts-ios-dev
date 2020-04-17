import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "spline"
    chart.inverted = true
    options.chart = chart

    let title = HITitle()
    title.text = "Atmosphere Temperature by Altitude"
    options.title = title

    let subtitle = HISubtitle()
    title.text = "According to the Standard Atmosphere Model"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.reversed = false
    xAxis.title = HITitle()
    xAxis.title.text = "Altitude"
    xAxis.labels = HILabels()
    xAxis.labels.format = "{value} km"
    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.rangeDescription = "Range: 0 to 80 km."
    xAxis.maxPadding = 0.05
    xAxis.showLastLabel = true
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Temperature"
    yAxis.labels = HILabels()
    yAxis.labels.format = "{value}°"
    yAxis.accessibility = HIAccessibility()
    yAxis.accessibility.rangeDescription = "Range: -90°C to 20°C."
    yAxis.lineWidth = 2
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{series.name}</b><br/>"
    tooltip.pointFormat = "{point.x} km: {point.y}°C"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.spline = HISpline()
    plotOptions.spline.marker = HIMarker()
    plotOptions.spline.marker.enabled = false
    options.plotOptions = plotOptions

    let temperature = HISpline()
    temperature.data = [
      [0, 15], [10, -50], [20, -56.5], [30, -46.5], [40, -22.1], [50, -2.5], [60, -27.7], [70, -55.7], [80, -76.5]
    ]

    options.series = [temperature]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

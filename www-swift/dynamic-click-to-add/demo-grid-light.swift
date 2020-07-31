import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "scatter"
    chart.margin = [70, 50, 60, 80]
    chart.events = HIEvents()
    chart.events.click = HIFunction(jsFunction: "function (e) { var x = Math.round(e.xAxis[0].value), y = Math.round(e.yAxis[0].value), series = this.series[0]; series.addPoint([x, y]); }")
    options.chart = chart

    let title = HITitle()
    title.text = "Live random data"
    options.title = title

    let subtitle = HISubtitle()
    title.text = "Click the plot area to add a point. Click a point to remove it."
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.announceNewData = HIAnnounceNewData()
    accessibility.announceNewData.enabled = true
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.gridLineWidth = 1
    xAxis.minPadding = 0.2
    xAxis.maxPadding = 0.2
    // xAxis.maxZoom = 60
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Value"
    yAxis.minPadding = 0.2
    yAxis.maxPadding = 0.2
    // yAxis.maxZoom = 60
    let plotLines = HIPlotLines()
    plotLines.value = 0
    plotLines.width = 1
    plotLines.color = HIColor(hexValue: "808080")
    yAxis.plotLines = [plotLines]
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let exporting = HIExporting()
    exporting.enabled = false
    options.exporting = exporting

    let plotOptions = HIPlotOptions()
    plotOptions.scatter = HIScatter()
    plotOptions.scatter.lineWidth = 1
    plotOptions.scatter.point = HIPoint()
    plotOptions.scatter.point.events = HIEvents()
    plotOptions.scatter.point.events.click = HIFunction(jsFunction: "function () { if (this.series.data.length > 1) { this.remove(); } }")
    options.plotOptions = plotOptions

    let scatter = HIScatter()
    scatter.data = [[20, 20], [80, 80]]
    options.series = [scatter]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

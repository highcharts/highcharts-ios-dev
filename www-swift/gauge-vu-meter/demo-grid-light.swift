import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "gauge"
    chart.plotBorderWidth = 1
    chart.plotBackgroundColor = HIColor(linearGradient: ["x1": 0, "y1": 0, "x2": 0, "y2": 1], stops: [[0, "#FFF4C6"], [1, "#FFF4C6"]])
    chart.height = 200
    options.chart = chart

    let title = HITitle()
    title.text = "VU meter"
    options.title = title

    let pane = HIPane()
    pane.startAngle = -45
    pane.endAngle = 45
    pane.center = ["25%", "145%"]
    pane.size = 300
    options.pane = pane

    let exporting = HIExporting()
    exporting.enabled = false
    options.exporting = exporting

    let tooltip = HITooltip()
    tooltip.enabled = false
    options.tooltip = tooltip

    let yAxis1 = HIYAxis()
    yAxis1.min = -20
    yAxis1.max = 6
    yAxis1.minorTickPosition = "outside"
    yAxis1.tickPosition = "outside"
    yAxis1.labels = HILabels()
    // yAxis1.labels.rotation = "auto"
    yAxis1.labels.distance = 20
    let plotBands = HIPlotBands()
    plotBands.from = 0
    plotBands.to = 6
    plotBands.color = HIColor(hexValue: "C02316")
    plotBands.innerRadius = "100%"
    plotBands.outerRadius = "105%"
    yAxis1.plotBands = [plotBands]
    yAxis1.pane = 0
    yAxis1.title = HITitle()
    yAxis1.title.text = "VU<br/><span style=\"font-size:8px\">Channel A</span>"
    yAxis1.title.y = -40

    let yAxis2 = HIYAxis()
    yAxis2.min = -20
    yAxis2.max = 6
    yAxis2.minorTickPosition = "outside"
    yAxis2.tickPosition = "outside"
    yAxis2.labels = HILabels()
    // yAxis2.labels.rotation = "auto"
    yAxis2.labels.distance = 20
    let plotBands2 = HIPlotBands()
    plotBands2.from = 0
    plotBands2.to = 6
    plotBands2.color = HIColor(hexValue: "C02316")
    plotBands2.innerRadius = "100%"
    plotBands2.outerRadius = "105%"
    yAxis2.plotBands = [plotBands2]
    yAxis2.pane = 1
    yAxis2.title = HITitle()
    yAxis2.title.text = "VU<br/><span style=\"font-size:8px\">Channel B</span>"
    yAxis2.title.y = -40
    options.yAxis = [yAxis1, yAxis2]

    let plotOptions = HIPlotOptions()
    plotOptions.gauge = HIGauge()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = false
    plotOptions.gauge.dataLabels = [dataLabels]
    plotOptions.gauge.dial = HIDial()
    plotOptions.gauge.dial.radius = "100%"
    options.plotOptions = plotOptions

    let channelA = HIGauge()
    channelA.name = "Channel A"
    channelA.data = [-20]
    channelA.yAxis = 0

    let channelB = HIGauge()
    channelA.name = "Channel B"
    channelA.data = [-20]
    channelA.yAxis = 1

    options.series = [channelA, channelB]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

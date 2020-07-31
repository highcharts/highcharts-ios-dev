import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["solid-gauge"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "solidgauge"
    options.chart = chart

    let pane = HIPane()
    pane.center = ["50%", "85%"]
    pane.size = "140%"
    pane.startAngle = -90
    pane.endAngle = 90

    let background = HIBackground()
    background.backgroundColor = HIColor(hexValue: "EEE")
    background.innerRadius = "60%"
    background.outerRadius = "100%"
    background.shape = "arc"

    pane.background = [background]

    options.pane = pane

    let exporting = HIExporting()
    exporting.enabled = false
    options.exporting = exporting

    let tooltip = HITooltip()
    tooltip.enabled = false
    options.tooltip = tooltip

    let yAxis = HIYAxis()
    let green = HIGradientColorStopObject()
    green.zero = 0.1
    green.one = "#55BF3B"
    let yellow = HIGradientColorStopObject()
    yellow.zero = 0.5
    yellow.one = "#DDDF0D"
    let red = HIGradientColorStopObject()
    red.zero = 0.9
    red.one = "#DF5353"
    yAxis.stops = [green, yellow, red]
    yAxis.lineWidth = 0
    yAxis.tickWidth = 0
    yAxis.tickAmount = 2
    yAxis.title = HITitle()
    yAxis.title.text = "Speed"
    yAxis.title.y = -70
    yAxis.labels = HILabels()
    yAxis.labels.y = 16

    yAxis.min = 0
    yAxis.max = 200

    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.solidgauge = HISolidgauge()
    let dataLabels = HIDataLabels()
    dataLabels.y = 5
    dataLabels.borderWidth = 0
    dataLabels.useHTML = true
    plotOptions.solidgauge.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let speed = HISolidgauge()
    speed.name = "Speed"
    speed.data = [80]
    speed.tooltip = HITooltip()
    speed.tooltip.valueSuffix = " km/h"
    let dataLabelsSolidGauge = HIDataLabels()
    dataLabels.format = "<div style=\"text-align:center\"><span style=\"font-size:25px\">{y}</span><br/><span style=\"font-size:12px;opacity:0.4\">km/h</span></div>"
    speed.dataLabels = [dataLabelsSolidGauge]

    options.series = [speed]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

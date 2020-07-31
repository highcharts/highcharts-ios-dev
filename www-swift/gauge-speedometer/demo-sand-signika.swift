import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "gauge"
    chart.plotBorderWidth = 0
    chart.plotShadow = HICSSObject()
    chart.plotShadow.width = 0
    options.chart = chart

    let title = HITitle()
    title.text = "Speedometer"
    options.title = title

    let pane = HIPane()
    pane.startAngle = -150
    pane.endAngle = 150

    let background1 = HIBackground()
    background1.backgroundColor = HIColor(linearGradient: ["x1": 0, "y1": 0, "x2": 0, "y2": 1], stops: [[0, "#FFF"], [1, "#333"]])
    background1.borderWidth = 0
    background1.outerRadius = "109%"

    let background2 = HIBackground()
    background2.backgroundColor = HIColor(linearGradient: ["x1": 0, "y1": 0, "x2": 0, "y2": 1], stops: [[0, "#333"], [1, "#FFF"]])
    background2.borderWidth = 1
    background2.outerRadius = "107%"

    let background3 = HIBackground()

    let background4 = HIBackground()
    background4.backgroundColor = HIColor(hexValue: "DDD")
    background4.borderWidth = 0
    background4.outerRadius = "105%"
    background4.innerRadius = "103%"

    pane.background = [
      background1, background2, background3, background4
    ]

    options.pane = pane

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.max = 200

    yAxis.minorTickInterval = "auto"
    yAxis.minorTickWidth = 1
    yAxis.minorTickLength = 10
    yAxis.minorTickPosition = "inside"
    yAxis.minorTickColor = HIColor(hexValue: "666")

    yAxis.tickPixelInterval = 30
    yAxis.tickWidth = 2
    yAxis.tickPosition = "inside"
    yAxis.tickLength = 10
    yAxis.tickColor = HIColor(hexValue: "666")
    yAxis.labels = HILabels()
    yAxis.labels.step = 2
    yAxis.title = HITitle()
    yAxis.title.text = "km/h"

    let greenPlotBands = HIPlotBands()
    greenPlotBands.from = 0
    greenPlotBands.to = 120
    greenPlotBands.color = HIColor(hexValue: "55BF3B")

    let yellowPlotBands = HIPlotBands()
    yellowPlotBands.from = 120
    yellowPlotBands.to = 160
    yellowPlotBands.color = HIColor(hexValue: "DDDF0D")

    let redPlotBands = HIPlotBands()
    redPlotBands.from = 160
    redPlotBands.to = 200
    redPlotBands.color = HIColor(hexValue: "DF5353")

    yAxis.plotBands = [greenPlotBands, yellowPlotBands, redPlotBands]

    options.yAxis = [yAxis]

    let speed = HIGauge()
    speed.name = "Speed"
    speed.data = [80]
    speed.tooltip = HITooltip()
    speed.tooltip.valueSuffix = " km/h"

    options.series = [speed]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

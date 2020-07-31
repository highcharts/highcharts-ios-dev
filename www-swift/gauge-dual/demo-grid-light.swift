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
    chart.alignTicks = false
    chart.plotBorderWidth = 0
    chart.plotShadow = HICSSObject()
    chart.plotShadow.width = 0
    options.chart = chart

    let title = HITitle()
    title.text = "Speedometer with dual axes"
    options.title = title

    let pane = HIPane()
    pane.startAngle = -150
    pane.endAngle = 150
    options.pane = pane

    let yAxis1 = HIYAxis()
    yAxis1.min = 0
    yAxis1.max = 200
    yAxis1.lineColor = HIColor(hexValue: "339")
    yAxis1.tickColor = HIColor(hexValue: "339")
    yAxis1.minorTickColor = HIColor(hexValue: "339")
    yAxis1.offset = -25
    yAxis1.lineWidth = 2
    yAxis1.labels = HILabels()
    yAxis1.labels.distance = -20
    // yAxis1.labels.rotation = "auto"
    yAxis1.tickLength = 5
    yAxis1.minorTickLength = 5
    yAxis1.endOnTick = false

    let yAxis2 = HIYAxis()
    yAxis2.min = 0
    yAxis2.max = 124
    yAxis2.tickPosition = "outside"
    yAxis2.lineColor = HIColor(hexValue: "933")
    yAxis2.lineWidth = 2
    yAxis2.minorTickPosition = "outside"
    yAxis2.tickColor = HIColor(hexValue: "933")
    yAxis2.minorTickColor = HIColor(hexValue: "933")
    yAxis2.tickLength = 5
    yAxis2.minorTickLength = 5
    yAxis2.labels = HILabels()
    yAxis2.labels.distance = 12
    // yAxis2.labels.rotation = "auto"
    yAxis2.offset = -20
    yAxis2.endOnTick = false

    options.yAxis = [yAxis1, yAxis2]

    let speed = HIGauge()
    speed.name = "Speed"
    speed.data = [80]

    let dataLabels = HIDataLabels()
    dataLabels.formatter = HIFunction(jsFunction: "function () { var kmh = this.y, mph = Math.round(kmh * 0.621); return '<span style=\"color:#339\">' + kmh + ' km/h</span><br/>' + '<span style=\"color:#933\">' + mph + ' mph</span>'; }")
    speed.dataLabels = [dataLabels]

    speed.tooltip = HITooltip()
    speed.tooltip.valueSuffix = " km/h"

    options.series = [speed]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

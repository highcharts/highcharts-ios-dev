import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let now = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.hour, .minute, .second], from: now)

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "gauge"
    chart.plotBorderWidth = 0
    chart.plotShadow = HICSSObject()
    chart.plotShadow.width = 0
    chart.height = "80%"
    options.chart = chart

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let title = HITitle()
    title.text = "The Highcharts clock"
    options.title = title

    let pane = HIPane()

    let background1 = HIBackground()

    let background2 = HIBackground()
    background2.backgroundColor = HIColor(radialGradient: ["cx": 0.5, "cy": -0.4, "r": 1.9], stops: [[0.5, "rgba(255, 255, 255, 0.2)"], [0.5, "rgba(200, 200, 200, 0.2)"]])
    pane.background = [
      background1, background2
    ]

    options.pane = pane

    let yAxis = HIYAxis()
    yAxis.labels = HILabels()
    yAxis.labels.distance = -20
    yAxis.min = 0
    yAxis.max = 12
    yAxis.lineWidth = 0
    yAxis.showFirstLabel = false

    yAxis.minorTickInterval = "auto"
    yAxis.minorTickWidth = 1
    yAxis.minorTickLength = 5
    yAxis.minorTickPosition = "inside"
    yAxis.minorGridLineWidth = 0
    yAxis.minorTickColor = HIColor(hexValue: "666")

    yAxis.tickInterval = 1
    yAxis.tickWidth = 2
    yAxis.tickPosition = "inside"
    yAxis.tickLength = 10
    yAxis.tickColor = HIColor(hexValue: "666")
    yAxis.title = HITitle()
    yAxis.title.text = "Powered by<br/>Highcharts"
    yAxis.title.style = HICSSObject()
    yAxis.title.style.color = "#BBB"
    yAxis.title.style.fontWeight = "normal"
    yAxis.title.style.fontSize = "8px"
    // yAxis.title.style.lineHeight = "10px"
    yAxis.title.y = 10
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.formatter = HIFunction(jsFunction: "function () { return this.series.chart.tooltipText; }")
    options.tooltip = tooltip

    let gauge = HIGauge()

    let hour = HIData()
    hour.id = "hour"
    hour.y = NSNumber(value: components.hour!)

    let dial1 = HIDial()
    dial1.radius = "60%"
    dial1.baseWidth = 4
    dial1.baseLength = "95%"
    dial1.rearLength = "0"

    let minute = HIData()
    minute.id = "minute"
    minute.y = NSNumber(value: components.minute!)

    let dial2 = HIDial()
    dial2.baseLength = "95$"
    dial2.rearLength = "0"

    let second = HIData()
    second.id = "second"
    second.y = NSNumber(value: components.second!)

    let dial3 = HIDial()
    dial3.radius = "100%"
    dial3.baseWidth = 1
    dial3.rearLength = "20%"

    gauge.dial = dial1
    gauge.data = [hour, minute, second]
    gauge.animation = HIAnimationOptionsObject()
    gauge.animation.duration = 0
    let datalabels = HIDataLabels()
    datalabels.enabled = false
    gauge.dataLabels = [datalabels]

    options.series = [gauge]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

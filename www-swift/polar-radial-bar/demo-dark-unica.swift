import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    options.colors = ["#FFD700", "#C0C0C0", "#CD7F32"]

    let chart = HIChart()
    chart.polar = true
    chart.inverted = true
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Winter Olympic medals per existing country (TOP 5)"
    options.title = title

    let tooltip = HITooltip()
    tooltip.outside = true
    options.tooltip = tooltip

    let pane = HIPane()
    pane.size = "85%"
    pane.innerSize = "20%"
    pane.endAngle = 270
    options.pane = pane

    let xAxis = HIXAxis()
    xAxis.tickInterval = 1
    xAxis.labels = HILabels()
    xAxis.labels.align = "right"
    xAxis.labels.useHTML = true
    xAxis.labels.allowOverlap = true
    xAxis.labels.step = 1
    xAxis.labels.y = 3
    xAxis.labels.style = HICSSObject()
    xAxis.labels.style.fontSize = "13px"
    xAxis.lineWidth = 0
    xAxis.categories = [
        "Norway <span class=\"f16\"><span id=\"flag\" class=\"flag no\">" +
        "</span></span>",
        "United States <span class=\"f16\"><span id=\"flag\" class=\"flag us\">" +
        "</span></span>",
        "Germany <span class=\"f16\"><span id=\"flag\" class=\"flag de\">" +
        "</span></span>",
        "Canada <span class=\"f16\"><span id=\"flag\" class=\"flag ca\">" +
        "</span></span>",
        "Austria <span class=\"f16\"><span id=\"flag\" class=\"flag at\">" +
        "</span></span>"
    ]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.crosshair = HICrosshair()
    // yAxis.crosshair.enabled = true
    yAxis.crosshair.color = HIColor(hexValue: "333")
    yAxis.lineWidth = 0
    yAxis.tickInterval = 25
    yAxis.reversedStacks = false
    yAxis.endOnTick = true
    yAxis.showLastLabel = true
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.stacking = "normal"
    plotOptions.column.borderWidth = 0
    plotOptions.column.pointPadding = 0
    plotOptions.column.groupPadding = 0.15
    options.plotOptions = plotOptions

    let gold = HIColumn()
    gold.name = "Gold medals"
    gold.data = [132, 105, 92, 73, 64]

    let silver = HIColumn()
    silver.name = "Silver medals"
    silver.data = [125, 110, 86, 64, 81]

    let bronze = HIColumn()
    bronze.name = "Bronze medals"
    bronze.data = [111, 90, 60, 62, 87]

    options.series = [gold, silver, bronze]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"
    chartView.plugins = ["bullet"]

    let options = HIOptions()

    let chart = HIChart()
    chart.inverted = true
    chart.marginLeft = 100
    chart.type = "bullet"
    options.chart = chart

    let title = HITitle()
    title.text = "2017 YTD"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["<span class=\"hc-cat-title\">Revenue</span><br/>U.S. $ (1,000s)"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.gridLineWidth = 0

    let plotBand1 = HIPlotBands()
    plotBand1.from = 0
    plotBand1.to = 150
    plotBand1.color = HIColor(hexValue: "666")

    let plotBand2 = HIPlotBands()
    plotBand2.from = 150
    plotBand2.to = 225
    plotBand2.color = HIColor(hexValue: "999")

    let plotBand3 = HIPlotBands()
    plotBand3.from = 225
    plotBand3.to = 9e9
    plotBand3.color = HIColor(hexValue: "bbb")

    yAxis.plotBands = [plotBand1, plotBand2, plotBand3]
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let plotOptions = HIPlotOptions()
    plotOptions.bullet = HIBullet()
    plotOptions.bullet.pointPadding = 0.25
    plotOptions.bullet.borderWidth = 0
    plotOptions.bullet.color = HIColor(hexValue: "000")
    plotOptions.bullet.targetOptions = HITargetOptions()
    plotOptions.bullet.targetOptions.width = "200%"
    options.plotOptions = plotOptions

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let exporting = HIExporting()
    exporting.enabled = false
    options.exporting = exporting

    let bullet = HIBullet()
    bullet.data = [["y": 275, "target": 250]]
    options.series = [bullet]

    let tooltip = HITooltip()
    tooltip.pointFormat = "<b>{point.y}</b> (with target at {point.target})"
    options.tooltip = tooltip

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

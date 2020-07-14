import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pie"
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 45
    chart.options3d.beta = 0
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market shares at a specific website, 2014"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueSuffix = "%"
    options.accessibility = accessibility

    let tooltip = HITooltip()
    tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    plotOptions.pie.allowPointSelect = true
    plotOptions.pie.cursor = "pointer"
    plotOptions.pie.depth = 35
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.name}"
    plotOptions.pie.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let browserShare = HIPie()
    browserShare.name = "Browser share"

    let chromeData = HIData()
    chromeData.name = "Chrome"
    chromeData.y = 12.8
    chromeData.sliced = true
    chromeData.selected = true
    let chromeDataLabels = HIDataLabels()
    dataLabels.enabled = false
    chromeData.dataLabels = chromeDataLabels

    browserShare.data = [
      ["Firefox", 45.0],
      ["IE", 26.8],
      chromeData,
      ["Safari", 8.5],
      ["Opera", 6.2],
      ["Others", 0.7]
    ]

    options.series = [browserShare]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

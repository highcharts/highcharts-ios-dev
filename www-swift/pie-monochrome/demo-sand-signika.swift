import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pie"
    chart.plotShadow = HICSSObject()
    chart.plotShadow.width = 0
    chart.plotBorderWidth = 0
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market shares at a specific website, 2014"
    options.title = title

    let tooltip = HITooltip()
    tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
    options.tooltip = tooltip

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueSuffix = "%"
    options.accessibility = accessibility

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    plotOptions.pie.allowPointSelect = true
    plotOptions.pie.cursor = "pointer"
    plotOptions.pie.colors = [
      HIColor(name: "rgb(15,72,127)"),
      HIColor(name: "rgb(52,109,164)"),
      HIColor(name: "rgb(88,145,200)"),
      HIColor(name: "rgb(124,181,236)"),
      HIColor(name: "rgb(160,217,255)"),
      HIColor(name: "rgb(196,253,255)"),
      HIColor(name: "rgb(233,255,255)"),
      HIColor(name: "rgb(255,255,255)"),
      HIColor(name: "rgb(255,255,255)"),
      HIColor(name: "rgb(255,255,255)")
    ]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "<b>{point.name}</b><br>{point.percentage:.1f} %"
    dataLabels.distance = -50
    dataLabels.filter = HIFilter()
    dataLabels.filter.property = "percentage"
    dataLabels.filter.operator = ">"
    dataLabels.filter.value = 4
    plotOptions.pie.dataLabels = [dataLabels]

    options.plotOptions = plotOptions

    let share = HIPie()
    share.name = "Share"

    let chromeData = HIData()
    chromeData.name = "Chrome"
    chromeData.y = 61.41

    let internetExplorerData = HIData()
    internetExplorerData.name = "Internet Explorer"
    internetExplorerData.y =  11.84

    let firefoxData = HIData()
    firefoxData.name = "Firefox"
    firefoxData.y = 10.85

    let edgeData = HIData()
    edgeData.name = "Edge"
    edgeData.y = 4.67

    let safariData = HIData()
    safariData.name = "Safari"
    safariData.y = 4.18

    let otherData = HIData()
    otherData.name = "Other"
    otherData.y = 7.05

    share.data = [chromeData, internetExplorerData, firefoxData, edgeData, safariData, otherData]

    options.series = [share]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

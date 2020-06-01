import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pie"
    chart.plotShadow = HICSSObject()
    chart.plotShadow.width = 0
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market shares in January, 2018"
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
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "<b>{point.name}</b>: {point.percentage:.1f} %"
    dataLabels.connectorColor = HIColor(name: "silver")
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

    options.colors = [
      "{ radialGradient: { cx : 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#7cb5ec'], [1, 'rgb(48,105,160)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#434348'], [1, 'rgb(0,0,0)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#90ed7d'], [1, 'rgb(68,161,49)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#f7a35c'], [1, 'rgb(171,87,16)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#8085e9'], [1, 'rgb(52,57,157)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#f15c80'], [1, 'rgb(165,16,52)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#f15c80'], [1, 'rgb(152,135,8)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#2b908f'], [1, 'rgb(0,68,67)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#f45b5b'], [1, 'rgb(168,15,15)']] }",
      "{ radialGradient: { cx: 0.5, cy: 0.3, r: 0.7}, stops: [[0, '#91e8e1'], [1, 'rgb(69,156,149)']]"
    ]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

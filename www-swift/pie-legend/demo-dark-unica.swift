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
    // accessibility.point.valueSuffix = "%"
    options.accessibility = accessibility

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    plotOptions.pie.allowPointSelect = true
    plotOptions.pie.cursor = "pointer"
    let dataLabels = HIDataLabels()
    dataLabels.enabled = false
    plotOptions.pie.dataLabels = [dataLabels]
    plotOptions.pie.showInLegend = true
    options.plotOptions = plotOptions

    let brands = HIPie()
    brands.name = "Brands"
    // brands.colorByPoint = true

    let data1 = HIData()
    data1.name = "Chrome"
    data1.y = 61.41
    data1.sliced = true
    data1.selected = true

    let data2 = HIData()
    data2.name = "Internet Explorer"
    data2.y =  11.84

    let data3 = HIData()
    data3.name = "Firefox"
    data3.y = 10.85

    let data4 = HIData()
    data4.name = "Edge"
    data4.y = 4.67

    let data5 = HIData()
    data5.name = "Safari"
    data5.y = 4.18

    let data6 = HIData()
    data6.name = "Other"
    data6.y = 7.05

    brands.data = [data1, data2, data3, data4, data5, data6]

    options.series = [brands]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

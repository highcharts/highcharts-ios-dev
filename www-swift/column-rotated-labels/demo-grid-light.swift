import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "World\"s largest cities per 2017"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://en.wikipedia.org/wiki/List_of_cities_proper_by_population\">Wikipedia</a>"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.type = "category"
    xAxis.labels = HILabels()
    xAxis.labels.rotation = -45
    xAxis.labels.style = HICSSObject()
    xAxis.labels.style.fontSize = "13px"
    xAxis.labels.style.fontFamily = "Verdana, sans-serif"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Population (millions)"
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.pointFormat = "Population in 2017: <b>{point.y:.1f} millions</b>"
    options.tooltip = tooltip

    let population = HIColumn()
    population.name = "Population"
    population.data = [
        ["Shanghai", 24.2],
        ["Beijing", 20.8],
        ["Karachi", 14.9],
        ["Shenzhen", 13.7],
        ["Guangzhou", 13.1],
        ["Istanbul", 12.7],
        ["Mumbai", 12.4],
        ["Moscow", 12.2],
        ["São Paulo", 12.0],
        ["Delhi", 11.7],
        ["Kinshasa", 11.5],
        ["Tianjin", 11.2],
        ["Lahore", 11.1],
        ["Jakarta", 10.6],
        ["Dongguan", 10.6],
        ["Lagos", 10.6],
        ["Bengaluru", 10.3],
        ["Seoul", 9.8],
        ["Foshan", 9.3],
        ["Tokyo", 9.3]
    ] as [Any]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.rotation = -90
    dataLabels.color = HIColor(hexValue: "FFFFFF")
    dataLabels.align = "right"
    dataLabels.format = "{point.y:.1f}" // one decimal
    dataLabels.y = 10 // 10 pixels down from the top
    dataLabels.style = HIStyle()
    dataLabels.style.fontSize = "13px"
    // dataLabels.style.fontFamily = "Verdana, sans-serif"

    population.dataLabels = [dataLabels]

    options.series = [population]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

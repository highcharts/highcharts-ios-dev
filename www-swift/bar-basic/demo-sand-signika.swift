import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "bar"
    options.chart = chart

    let title = HITitle()
    title.text = "Historic World Population by Region"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"https://en.wikipedia.org/wiki/World_population\">Wikipedia.org</a>"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["Africa", "America", "Asia", "Europe", "Oceania"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Population (millions)"
    yAxis.title.align = "high"
    yAxis.labels = HILabels()
    yAxis.labels.overflow = "justify"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = " millions"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.bar = HIBar()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    plotOptions.bar.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "right"
    legend.verticalAlign = "top"
    legend.x = -40
    legend.y = 80
    legend.floating = true
    legend.borderWidth = 1
    legend.backgroundColor = HIColor(hexValue: "FFFFFF")
    legend.shadow = HICSSObject()
    legend.shadow.opacity = 1
    options.legend = legend

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let year1800 = HIBar()
    year1800.name = "Year 1800"
    year1800.data = [107, 31, 635, 203, 2]

    let year1900 = HIBar()
    year1900.name = "Year 1900"
    year1900.data = [133, 156, 947, 408, 6]

    let year2000 = HIBar()
    year2000.name = "Year 2000"
    year2000.data = [814, 841, 3714, 727, 31]

    let year2016 = HIBar()
    year2016.name = "Year 2016"
    year2016.data = [1216, 1001, 4436, 738, 40]

    options.series = [year1800, year1900, year2000, year2000]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

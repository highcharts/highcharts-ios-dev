import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    
    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Monthly Average Rainfall"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: WorldClimate.com"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec"
    ]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Rainfall (mm)"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = "<span style=\"font-size:10px\">{point.key}</span><table>"
    tooltip.pointFormat = "<tr><td style=\"color:{series.color};padding:0\">{series.name}: </td>" + "<td style=\"padding:0\"><b>{point.y:.1f} mm</b></td></tr>"
    tooltip.footerFormat = "</table>"
    tooltip.shared = true
    tooltip.useHTML = true
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.pointPadding = 0.2
    plotOptions.column.borderWidth = 0
    options.plotOptions = plotOptions

    let tokyo = HIColumn()
    tokyo.name = "Tokyo"
    tokyo.data = [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

    let newYork = HIColumn()
    newYork.name = "New York"
    newYork.data = [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

    let london = HIColumn()
    london.name = "London"
    london.data = [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

    let berlin = HIColumn()
    berlin.name = "Berlin"
    berlin.data = [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

    options.series = [tokyo, newYork, london, berlin]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

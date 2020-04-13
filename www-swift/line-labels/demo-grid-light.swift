import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["series-label"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "line"
    options.chart = chart

    let title = HITitle()
    title.text = "Monthly Average Temperature"
    options.title = title

    let subtitle = HISubtitle()
    title.text = "Source: WorldClimate.com"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Temperature (°C)"
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.line = HILine()

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    plotOptions.line.dataLabels = [dataLabels]

    plotOptions.line.enableMouseTracking = false
    options.plotOptions = plotOptions

    let tokyo = HILine()
    tokyo.name = "Tokyo"
    tokyo.data = [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]

    let london = HILine()
    london.name = "London"
    london.data = [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]

    options.series = [tokyo, london]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

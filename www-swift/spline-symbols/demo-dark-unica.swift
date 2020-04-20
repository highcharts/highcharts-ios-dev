import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    chartView.plugins = ["series-label"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "spline"
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
    yAxis.title.text = "Temperature"
    yAxis.labels = HILabels()
    yAxis.labels.formatter = HIFunction(jsFunction: "function () { return this.value + '°'; }")
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
//    tooltip.crosshairs = true
    tooltip.shared = true
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.spline = HISpline()
    plotOptions.spline.marker = HIMarker()
    plotOptions.spline.marker.radius = 4
    plotOptions.spline.marker.lineColor = "#666666"
    plotOptions.spline.marker.lineWidth = 1
    options.plotOptions = plotOptions

    let tokyo = HISpline()
    tokyo.name = "Tokyo"
    tokyo.marker = HIMarker()
    tokyo.marker.symbol = "square"

    let tokyoData = HIData()
    tokyoData.y = 26.5
    tokyoData.marker = HIMarker()
    tokyoData.marker.symbol = "url(https://www.highcharts.com/samples/graphics/sun.png)"
    tokyo.data = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, tokyoData, 23.3, 18.3, 13.9, 9.6]

    let london = HISpline()
    london.name = "London"
    london.marker = HIMarker()
    london.marker.symbol = "diamond"

    let londonData = HIData()
    londonData.y = 3.9
    londonData.marker = HIMarker()
    londonData.marker.symbol = "url(https://www.highcharts.com/samples/graphics/snow.png)"
    london.data = [londonData, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]

    options.series = [tokyo, london]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

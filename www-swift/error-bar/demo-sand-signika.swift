import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.zoomType = "xy"
    options.chart = chart

    let title = HITitle()
    title.text = "Temperature vs Rainfall"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    options.xAxis = [xAxis]

    let primaryYAxis = HIYAxis()
    primaryYAxis.labels = HILabels()
    primaryYAxis.labels.format = "{value} °C"
    primaryYAxis.labels.style = HICSSObject()
    primaryYAxis.labels.style.color = "#434348"
    primaryYAxis.title = HITitle()
    primaryYAxis.title.text = "Temperature"
    primaryYAxis.title.style = HICSSObject()
    primaryYAxis.title.style.color = "#434348"

    let secondaryYAxis = HIYAxis()
    secondaryYAxis.title = HITitle()
    secondaryYAxis.title.text = "Rainfall"
    secondaryYAxis.title.style = HICSSObject()
    secondaryYAxis.title.style.color = "#7cb5ec"
    secondaryYAxis.labels = HILabels()
    secondaryYAxis.labels.format = "{value} mm"
    secondaryYAxis.labels.style = HICSSObject()
    secondaryYAxis.labels.style.color = "#7cb5ec"
    secondaryYAxis.opposite = true

    options.yAxis = [primaryYAxis, secondaryYAxis]

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let rainfall = HIColumn()
    rainfall.name = "Rainfall"
    rainfall.yAxis = 1
    rainfall.data = [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    rainfall.tooltip = HITooltip()
    rainfall.tooltip.pointFormat = "<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f} mm</b>"

    let rainfallError = HIErrorbar()
    rainfallError.name = "Rainfall error"
    rainfallError.yAxis = 1
    rainfallError.data = [[48, 51], [68, 73], [92, 110], [128, 136], [140, 150], [171, 179], [135, 143], [142, 149], [204, 220], [189, 199], [95, 110], [52, 56]]
    rainfallError.tooltip = HITooltip()
    rainfallError.tooltip.pointFormat = "(error range: {point.low}-{point.high} mm)<br/>"

    let temperature = HISpline()
    temperature.name = "Temperature"
    temperature.data = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    temperature.tooltip = HITooltip()
    temperature.tooltip.pointFormat = "<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f}°C</b>"

    let temperatureError = HIErrorbar()
    temperatureError.name = "Temperature error"
    temperatureError.data = [[6, 8], [5.9, 7.6], [9.4, 10.4], [14.1, 15.9], [18.0, 20.1], [21.0, 24.0], [23.2, 25.3], [26.1, 27.8], [23.2, 23.9], [18.0, 21.1], [12.9, 14.0], [7.6, 10.0]]
    temperatureError.tooltip = HITooltip()
    temperatureError.tooltip.pointFormat = "(error range: {point.low}-{point.high}°C)<br/>"

    options.series = [rainfall, rainfallError, temperature, temperatureError]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

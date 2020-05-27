import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "columnrange"
    chart.inverted = true
    options.chart = chart

    let accessibility = HIAccessibility()
    accessibility.definition = "Image description: A column range chart compares the monthly temperature variations throughout 2017 in Vik I Sogn, Norway. The chart is interactive and displays the temperature range for each month when hovering over the data. The temperature is measured in degrees Celsius on the X-axis and the months are plotted on the Y-axis. The lowest temperature is recorded in March at minus 10.2 Celsius. The lowest range of temperatures is found in December ranging from a low of minus 9 to a high of 8.6 Celsius. The highest temperature is found in July at 26.2 Celsius. July also has the highest range of temperatures from 6 to 26.2 Celsius. The broadest range of temperatures is found in May ranging from a low of minus 0.6 to a high of 23.1 Celsius."
    options.accessibility = accessibility

    let title = HITitle()
    title.text = "Temperature variation by month"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Observed in Vik i Sogn, Norway, 2017"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Temperature ( °C )"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = "°C"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.columnrange = HIColumnrange()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{y}°C"
    plotOptions.columnrange.dataLabels = [dataLabels]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let temperatures = HIColumnrange()
    temperatures.name = "Temperatures"
    temperatures.data = [
      [-9.9, 10.3],
      [-8.6, 8.5],
      [-10.2, 11.8],
      [-1.7, 12.2],
      [-0.6, 23.1],
      [3.7, 25.4],
      [6.0, 26.2],
      [6.7, 21.4],
      [3.5, 19.5],
      [-1.3, 16.0],
      [-8.7, 9.4],
      [-9.0, 8.6]
    ]

    options.series = [temperatures]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

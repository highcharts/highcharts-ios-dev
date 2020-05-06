import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "area"
    options.chart = chart

    let title = HITitle()
    title.text = "Fruit consumption *"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "* Jane\'s banana consumption is unknown"
    subtitle.align = "right"
    subtitle.verticalAlign = "bottom"
    options.subtitle = subtitle

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "left"
    legend.verticalAlign = "top"
    legend.x = 100
    legend.y = 70
    legend.floating = true
    legend.borderWidth = 1
    legend.backgroundColor = HIColor(hexValue: "FFFFFF")
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Pears", "Oranges", "Bananas", "Grapes", "Plums", "Strawberries", "Raspberries"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Y-Axis"
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.area = HIArea()
    plotOptions.area.fillOpacity = 0.5
    options.plotOptions = plotOptions

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let john = HIArea()
    john.name = "John"
    john.data = [0, 1, 4, 4, 5, 2, 3, 7]

    let jane = HIArea()
    jane.name = "Jane"
    jane.data = [1, 0, 3, NSNull(), 3, 1, 2, 1]

    options.series = [john, jane]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

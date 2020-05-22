import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

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
    options.yAxis = [yAxis]let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Total fruit consumtion, grouped by gender"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.allowDecimals = false
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Number of fruits"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.formatter = HIFunction(jsFunction: "function () { return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + this.y + '<br/>' + 'Total: ' + this.point.stackTotal; }")
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.stacking = "normal"
    options.plotOptions = plotOptions

    let john = HIColumn()
    john.name = "John"
    john.data = [5, 3, 4, 7, 2]
    john.stack = "male"

    let joe = HIColumn()
    joe.name = "Joe"
    joe.data = [3, 4, 4, 2, 5]
    joe.stack = "male"

    let jane = HIColumn()
    jane.name = "Jane"
    jane.data = [2, 5, 6, 2, 1]
    jane.stack = "female"

    let janet = HIColumn()
    janet.name = "Janet"
    janet.data = [3, 0, 4, 4, 3]
    janet.stack = "female"

    options.series = [john, joe, jane, janet]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

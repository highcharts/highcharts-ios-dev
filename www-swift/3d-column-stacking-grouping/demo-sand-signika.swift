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
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 15
    chart.options3d.beta = 15
    chart.options3d.depth = 40
    chart.options3d.viewDistance = 25
    options.chart = chart

    let title = HITitle()
    title.text = "Total fruit consumption, grouped by gender"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
    xAxis.labels = HILabels()
    xAxis.labels.skew3d = true
    xAxis.labels.style = HICSSObject()
    xAxis.labels.style.fontSize = "16px"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.allowDecimals = true
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Number of fruits"
    yAxis.title.skew3d = true
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{point.key}</b><br>"
    tooltip.pointFormat = "<span style=\"color:{series.color}\">\u{25CF}</span> {series.name}: {point.y} / {point.stackTotal}"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.stacking = "normal"
    plotOptions.column.depth = 40
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

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Stacked column chart"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Total fruit consumption"
    yAxis.stackLabels = HIStackLabels()
    yAxis.stackLabels.enabled = true
    yAxis.stackLabels.style = HICSSObject()
    yAxis.stackLabels.style.fontWeight = "bold"
    yAxis.stackLabels.style.color = "gray"
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.align = "right"
    legend.x = -30
    legend.verticalAlign = "top"
    legend.y = 25
    legend.floating = true
    legend.backgroundColor = HIColor(name: "white")
    legend.borderColor = HIColor(hexValue: "CCC")
    legend.borderWidth = 1
    legend.shadow = HICSSObject()
    legend.shadow.opacity = 0
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{point.x}</b><br/>"
    tooltip.pointFormat = "{series.name}: {point.y}<br/>Total: {point.stackTotal}"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.stacking = "normal"
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    plotOptions.series.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let john = HIColumn()
    john.name = "John"
    john.data = [5, 3, 4, 7, 2]

    let jane = HIColumn()
    jane.name = "Jane"
    jane.data = [2, 2, 3, 2, 1]

    let joe = HIColumn()
    joe.name = "Joe"
    joe.data = [3, 4, 4, 2, 5]

    options.series = [john, jane, joe]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

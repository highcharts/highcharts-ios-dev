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
    title.text = "Efficiency Optimization by Branch"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = [
        "Seattle HQ",
        "San Francisco",
        "Tokyo"
    ]
    options.xAxis = [xAxis]

    let yAxis1 = HIYAxis()
    yAxis1.min = 0
    yAxis1.title = HITitle()
    yAxis1.title.text = "Employees"

    let yAxis2 = HIYAxis()
    yAxis1.title = HITitle()
    yAxis1.title.text = "Profit (millions)"

    options.yAxis = [yAxis1, yAxis2]

    let legend = HILegend()
    legend.shadow = HICSSObject()
    legend.shadow.opacity = 1
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.grouping = false
    plotOptions.column.shadow = HIShadowOptionsObject()
    plotOptions.column.shadow.opacity = 0
    plotOptions.column.borderWidth = 0
    options.plotOptions = plotOptions

    let employees = HIColumn()
    employees.name = "Employees"
    employees.color = HIColor(name: "rgba(165,170,217,1)")
    employees.data = [150, 73, 20]
    employees.pointPadding = 0.3
    employees.pointPlacement = -0.2

    let employeesOptimized = HIColumn()
    employeesOptimized.name = "Employees Optimized"
    employeesOptimized.color = HIColor(name: "rgba(126,86,134,.9)")
    employeesOptimized.data = [140, 90, 40]
    employeesOptimized.pointPadding = 0.4
    employeesOptimized.pointPlacement = -0.2

    let profit = HIColumn()
    profit.name = "Profit"
    profit.color = HIColor(name: "rgba(248,161,63,1)")
    profit.data = [183.6, 178.8, 198.5]
    profit.tooltip = HITooltip()
    profit.tooltip.valuePrefix = "$"
    profit.tooltip.valueSuffix = " M"
    profit.pointPadding = 0.3
    profit.pointPlacement = 0.2
    profit.yAxis = 1

    let profitOptimized = HIColumn()
    profitOptimized.name = "Profit Optimized"
    profitOptimized.color = HIColor(name: "rgba(186,60,61,.9)")
    profitOptimized.data = [203.6, 198.8, 208.5]
    profitOptimized.tooltip = HITooltip()
    profitOptimized.tooltip.valuePrefix = "$"
    profitOptimized.tooltip.valueSuffix = " M"
    profitOptimized.pointPadding = 0.4
    profitOptimized.pointPlacement = 0.2
    profitOptimized.yAxis = 1

    options.series = [employees, employeesOptimized, profit, profitOptimized]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

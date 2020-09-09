import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let chart = HIChart()
    chart.polar = true
    chart.type = "line"
    options.chart = chart

    let accessibility = HIAccessibility()
    accessibility.definition = "A spiderweb chart compares the allocated budget against actual spending within an organization. The spider chart has six spokes. Each spoke represents one of the 6 departments within the organization: sales, marketing, development, customer support, information technology and administration. The chart is interactive, and each data point is displayed upon hovering. The chart clearly shows that 4 of the 6 departments have overspent their budget with Marketing responsible for the greatest overspend of $20,000. The allocated budget and actual spending data points for each department are as follows: Sales. Budget equals $43,000; spending equals $50,000. Marketing. Budget equals $19,000; spending equals $39,000. Development. Budget equals $60,000; spending equals $42,000. Customer support. Budget equals $35,000; spending equals $31,000. Information technology. Budget equals $17,000; spending equals $26,000. Administration. Budget equals $10,000; spending equals $14,000."
    options.accessibility = accessibility

    let title = HITitle()
    title.text = "Budget vs spending"
    title.x = -80
    options.title = title

    let pane = HIPane()
    pane.size = "80%"
    options.pane = pane

    let xAxis = HIXAxis()
    xAxis.categories = ["Sales", "Marketing", "Development", "Customer Support", "Information Technology", "Administration"]
    xAxis.tickmarkPlacement = "on"
    xAxis.lineWidth = 0
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.gridLineInterpolation = "polygon"
    yAxis.lineWidth = 0
    yAxis.min = 0
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.shared = true
    tooltip.pointFormat = "<span style=\"color:{series.color}\">{series.name}: <b>${point.y:,.0f}</b><br/>"
    options.tooltip = tooltip

    let legend = HILegend()
    legend.align = "right"
    legend.verticalAlign = "middle"
    legend.layout = "vertical"
    options.legend = legend

    let budget = HILine()
    budget.name = "Allocated Budget"
    budget.data = [43000, 19000, 60000, 35000, 17000, 10000]
    budget.pointPlacement = "on"

    let spending = HILine()
    spending.name = "Actual Spending"
    spending.data = [50000, 39000, 42000, 31000, 26000, 14000]
    spending.pointPlacement = "on"

    options.series = [budget, spending]

    let responsive = HIResponsive()

    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500

    rule.chartOptions = [
      "legend": [
        "align": "center",
        "verticalAlign": "bottom",
        "layout": "horizontal"
      ],
      "pane": [
        "size": "70%"
      ]
    ]

    responsive.rules = [rule]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

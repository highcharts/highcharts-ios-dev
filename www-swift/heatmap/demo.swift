import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["heatmap"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "heatmap"
    chart.marginTop = 40
    chart.marginBottom = 80
    chart.plotBorderWidth = 1
    options.chart = chart

    let title = HITitle()
    title.text = "Sales per employee per weekday"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Alexander", "Marie", "Maximilian", "Sophia", "Lukas", "Maria", "Leon", "Anna", "Tim", "Laura"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.categories = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    yAxis.reversed = true
    options.yAxis = [yAxis]

    let accesibility = HIAccessibility()
    accesibility.point = HIPoint()
    accesibility.pointDescriptionFormatter = HIFunction(jsFunction: "function (point) { var ix = point.index + 1, xName = series['xAxis'].categories[point['x']], yName = series['yAxis'].categories[point['y']], val = point.value; return ix + '. ' + xName + ' sales ' + yName + ', ' + val + '.'; }")
    options.accessibility = accesibility

    let colorAxis = HIColorAxis()
    colorAxis.min = 0
    colorAxis.minColor = HIColor(hexValue: "FFFFFF")
    colorAxis.maxColor = HIColor(hexValue: "7cb5ec")
    options.colorAxis = [colorAxis]

    let legend = HILegend()
    legend.align = "right"
    legend.layout = "vertical"
    legend.margin = 0
    legend.verticalAlign = "top"
    legend.y = 25
    legend.symbolHeight = 280
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.formatter = HIFunction(jsFunction: "function () { return '<b>' + getPointCategoryName(this.point, 'x') + '</b> sold <br><b>' + this.point.value + '</b> items on <br><b>' + getPointCategoryName(this.point, 'y') + '</b>'; }")
    options.tooltip = tooltip

    let heatmap = HIHeatmap()
    heatmap.name = "Sales per employee"
    // heatmap.borderWidth = 1
    heatmap.data = [[0, 0, 10], [0, 1, 19], [0, 2, 8], [0, 3, 24], [0, 4, 67], [1, 0, 92], [1, 1, 58], [1, 2, 78], [1, 3, 117], [1, 4, 48], [2, 0, 35], [2, 1, 15], [2, 2, 123], [2, 3, 64], [2, 4, 52], [3, 0, 72], [3, 1, 132], [3, 2, 114], [3, 3, 19], [3, 4, 16], [4, 0, 38], [4, 1, 5], [4, 2, 8], [4, 3, 117], [4, 4, 115], [5, 0, 88], [5, 1, 32], [5, 2, 12], [5, 3, 6], [5, 4, 120], [6, 0, 13], [6, 1, 44], [6, 2, 88], [6, 3, 98], [6, 4, 96], [7, 0, 31], [7, 1, 1], [7, 2, 82], [7, 3, 32], [7, 4, 30], [8, 0, 85], [8, 1, 97], [8, 2, 123], [8, 3, 64], [8, 4, 84], [9, 0, 47], [9, 1, 114], [9, 2, 31], [9, 3, 48], [9, 4, 91]]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.color = HIColor(hexValue: "000000")
    heatmap.dataLabels = [dataLabels]

    options.series = [heatmap]

    let responsive = HIResponsive()

    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "yAxis": [
        "labels": [
          "formatter": "function () { return this.value.charAt(0); }"
        ]
      ]
    ]

    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Summer Olympics 2016 - Top 5 countries by Gold medals"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Comparing to results from Summer Olympics 2012 - Source: <ahref=\"https://en.wikipedia.org/wiki/2016_Summer_Olympics_medal_table\">Wikipedia</a>"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.grouping = false
    plotOptions.column.borderWidth = 0
    options.plotOptions = plotOptions

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.shared = true
    tooltip.headerFormat = "<span style=\"font-size: 15px\">{point.point.name}</span><br/>"
    tooltip.pointFormat = "<span style=\"color:{point.color}\">\u{25CF}</span> {series.name}: <b>{point.y} medals</b><br/>"
    options.tooltip = tooltip

    let xAxis = HIXAxis()
    xAxis.type = "category"
    xAxis.max = 4
    xAxis.labels = HILabels()
    xAxis.labels.useHTML = true
    // xAxis.labels.formatter = HIFunction(jsFunction: "function () { var value = this.value, output; countries.forEach(function (country) { if (country.name === value) { output = country.flag; } }); return '<span><img src=\"https://image.flaticon.com/icons/svg/197/' + output + '.svg\" style=\"width: 40px; height: 40px;\"/><br></span>';")
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Gold medals"
    yAxis.showFirstLabel = false
    options.yAxis = [yAxis]

    let column1 = HIColumn()
    column1.color = HIColor(name: "rgb(158, 159, 163)")
    column1.pointPlacement = -0.2
    column1.linkedTo = "main"
    column1.data = [
        ["South Korea", 0],
        ["Japan", 0],
        ["Australia", 0],
        ["Germany", 11],
        ["Russia", 24],
        ["China", 38],
        ["Great Britain", 29],
        ["United States", 46]
    ]
    column1.name = "2012"

    let column2 = HIColumn()
    column2.name = "2016"
    column2.id = "main"
    column2.dataSorting = HIDataSortingOptionsObject()
    column2.dataSorting.enabled = true
    column2.dataSorting.matchByName = true
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.inside = true
    dataLabels.style = HIStyle()
    dataLabels.style.fontSize = "16px"
    column2.dataLabels = [dataLabels]
    column2.data = [
        ["South Korea", 0],
        ["Japan", 0],
        ["Australia", 0],
        ["Germany", 17],
        ["Russia", 19],
        ["China", 26],
        ["Great Britain", 27],
        ["United States", 46]
    ]

    options.series = [column1, column2]

    let exporting = HIExporting()
    exporting.allowHTML = true
    options.exporting = exporting

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

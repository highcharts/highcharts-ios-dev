import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.polar = true
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts Polar Chart"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Also known as Radar Chart"
    options.subtitle = subtitle

    let pane = HIPane()
    pane.startAngle = 0
    pane.endAngle = 360
    options.pane = pane

    let xAxis = HIXAxis()
    xAxis.tickInterval = 45
    xAxis.min = 0
    xAxis.max = 360
    xAxis.labels = HILabels()
    xAxis.labels.format = "{value}°"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    options.yAxis = [yAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.pointStart = 0
    plotOptions.series.pointInterval = 45
    plotOptions.column = HIColumn()
    plotOptions.column.pointPadding = 0
    plotOptions.column.groupPadding = 0
    options.plotOptions = plotOptions

    let column = HIColumn()
    column.name = "Column"
    column.data = [8, 7, 6, 5, 4, 3, 2, 1]

    let line = HILine()
    line.name = "Line"
    line.data = [1, 2, 3, 4, 5, 6, 7, 8]

    let area = HIArea()
    area.name = "Area"
    area.data = [1, 8, 2, 7, 3, 6, 4, 5]

    options.series = [column, line, area]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

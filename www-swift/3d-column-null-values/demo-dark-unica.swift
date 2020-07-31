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
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 10
    chart.options3d.beta = 25
    chart.options3d.depth = 70
    options.chart = chart

    let title = HITitle()
    title.text = "3D chart with null values"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Notice the difference between a 0 value and a null point"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.depth = 25
    options.plotOptions = plotOptions

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    xAxis.labels = HILabels()
    xAxis.labels.skew3d = true
    xAxis.labels.style = HICSSObject()
    xAxis.labels.style.fontSize = "16px"
    options.xAxis = [xAxis]

    let column = HIColumn()
    column.name = "Sales"
    column.data = [2, 3, NSNull(), 4, 0, 5, 1, 4, 6, 3]
    options.series = [column]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

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
    chart.options3d.alpha = 15
    chart.options3d.beta = 15
    chart.options3d.depth = 50
    chart.options3d.viewDistance = 25
    options.chart = chart

    let title = HITitle()
    title.text = "Chart rotation demo"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Test options by dragging the sliders below"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.depth = 25
    options.plotOptions = plotOptions

    let column = HIColumn()
    column.data = [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    options.series = [column]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

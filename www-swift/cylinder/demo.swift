import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["cylinder"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "cylinder"
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 15
    chart.options3d.beta = 15
    chart.options3d.depth = 50
    chart.options3d.viewDistance = 25
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts Cylinder Chart"
    options.title = title

    let plotOptions = HIPlotOptions()
    plotOptions.cylinder = HICylinder()
    plotOptions.cylinder.depth = 25
    plotOptions.cylinder.colorByPoint = true
    options.plotOptions = plotOptions

    let cylinders = HICylinder()
    cylinders.name = "Cylinders"
    cylinders.showInLegend = true
    cylinders.data = [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    options.series = [cylinders]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

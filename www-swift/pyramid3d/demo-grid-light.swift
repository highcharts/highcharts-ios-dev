import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["cylinder", "funnel3d", "pyramid3d"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pyramid3d"
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 10
    chart.options3d.depth = 50
    chart.options3d.viewDistance = 50
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts Pyramid3D Chart"
    options.title = title

    let plotOptions = HIPlotOptions()
    plotOptions.pyramid3d = HIPyramid3d()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "<b>{point.name}</b> ({point.y:,.0f})"
    dataLabels.allowOverlap = true
    dataLabels.x = 10
    dataLabels.y = -5
    plotOptions.pyramid3d.dataLabels = [dataLabels]
    plotOptions.pyramid3d.width = "60%"
    plotOptions.pyramid3d.height = "80%"
    // plotOptions.pyramid3d.center = ["50%", "45%"]
    options.plotOptions = plotOptions

    let uniqueUsers = HIPyramid3d()
    uniqueUsers.name = "Unique users"
    uniqueUsers.data = [
        ["Website visits", 15654],
        ["Downloads", 4064],
        ["Requested price list", 1987],
        ["Invoice sent", 976],
        ["Finalized", 846]
    ]
    options.series = [uniqueUsers]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

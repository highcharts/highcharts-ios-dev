import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["cylinder", "funnel3d"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "funnel3d"
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 10
    chart.options3d.depth = 50
    chart.options3d.viewDistance = 50
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts Funnel3D Chart"
    options.title = title

    let plotOptions = HIPlotOptions()
    plotOptions.funnel3d = HIFunnel3d()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "<b>{point.name}</b> ({point.y:,.0f})"
    dataLabels.allowOverlap = true
    dataLabels.y = 10
    plotOptions.funnel3d.dataLabels = [dataLabels]
    plotOptions.funnel3d.neckWidth = "30%"
    plotOptions.funnel3d.neckHeight = "25%"
    plotOptions.funnel3d.width = "80%"
    plotOptions.funnel3d.height = "80%"
    plotOptions.funnel3d.colorByPoint = true
    options.plotOptions = plotOptions

    let uniqueUsers = HIFunnel3d()
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

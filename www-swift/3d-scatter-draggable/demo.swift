import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "scatter3d"
    chart.margin = [100]
    chart.animation = HIAnimationOptionsObject()
    chart.animation.duration = 0
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 10
    chart.options3d.beta = 30
    chart.options3d.depth = 250
    chart.options3d.viewDistance = 5
    chart.options3d.fitToPlot = false
    chart.options3d.frame = HIFrame()
    chart.options3d.frame.bottom = HIBottom()
    chart.options3d.frame.bottom.size = 1
    chart.options3d.frame.bottom.color = HIColor(name: "rgba(0,0,0,0.02)")
    chart.options3d.frame.back = HIBack()
    chart.options3d.frame.back.size = 1
    chart.options3d.frame.back.color = HIColor(name: "rgba(0,0,0,0.04)")
    // chart.options3d.frame.side = HISide()
    // chart.options3d.frame.side.size = 1
    // chart.options3d.frame.side.color = HIColor(name: "rgba(0,0,0,0.06)")
    options.chart = chart

    let title = HITitle()
    title.text = "Draggable box"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Click and drag the plot area to rotate in space"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.scatter = HIScatter()
    // plotOptions.scatter.width = 10
    // plotOptions.scatter.height = 10
    // plotOptions.scatter.depth = 10
    options.plotOptions = plotOptions

    let xAxis = HIXAxis()
    xAxis.min = 0
    xAxis.max = 10
    xAxis.gridLineWidth = 1
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.max = 10
    options.yAxis = [yAxis]

    let zAxis = HIZAxis()
    zAxis.min = 0
    zAxis.max = 10
    zAxis.showFirstLabel = false
    options.zAxis = [zAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let data = HIScatter3d()
    data.name = "Data"
    // data.colorByPoint = true
    data.accessibility = HIAccessibility()
    data.accessibility.exposeAsGroupOnly = true
    data.data = [
    [1, 6, 5], [8, 7, 9], [1, 3, 4], [4, 6, 8], [5, 7, 7], [6, 9, 6],
    [7, 0, 5], [2, 3, 3], [3, 9, 8], [3, 6, 5], [4, 9, 4], [2, 3, 3],
    [6, 9, 9], [0, 7, 0], [7, 7, 9], [7, 2, 9], [0, 6, 2], [4, 6, 7],
    [3, 7, 7], [0, 1, 7], [2, 8, 6], [2, 3, 7], [6, 4, 8], [3, 5, 9],
    [7, 9, 5], [3, 1, 7], [4, 4, 2], [3, 6, 2], [3, 1, 6], [6, 8, 5],
    [6, 6, 7], [4, 1, 1], [7, 2, 7], [7, 7, 0], [8, 8, 9], [9, 4, 1],
    [8, 3, 4], [9, 8, 9], [3, 5, 3], [0, 2, 4], [6, 0, 2], [2, 1, 3],
    [5, 8, 9], [2, 1, 1], [9, 7, 6], [3, 0, 2], [9, 9, 0], [3, 4, 8],
    [2, 6, 1], [8, 9, 2], [7, 6, 5], [6, 3, 1], [9, 3, 1], [8, 9, 3],
    [9, 1, 0], [3, 8, 7], [8, 0, 0], [4, 9, 7], [8, 6, 2], [4, 3, 0],
    [2, 3, 5], [9, 1, 4], [1, 1, 4], [6, 0, 2], [6, 1, 6], [3, 8, 8],
    [8, 8, 7], [5, 5, 0], [3, 9, 6], [5, 4, 3], [6, 8, 3], [0, 1, 5],
    [6, 7, 3], [8, 3, 2], [3, 8, 3], [2, 1, 6], [4, 6, 7], [8, 9, 9],
    [5, 4, 2], [6, 1, 3], [6, 9, 5], [4, 8, 2], [9, 7, 4], [5, 4, 2],
    [9, 6, 1], [2, 7, 3], [4, 5, 4], [6, 8, 1], [3, 4, 0], [2, 2, 6],
    [5, 1, 2], [9, 9, 7], [6, 9, 9], [8, 4, 3], [4, 1, 7], [6, 2, 5],
    [0, 4, 9], [3, 5, 9], [6, 9, 1], [1, 9, 2]]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

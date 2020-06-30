import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let title = HITitle()
    title.text = "Scatter plot with regression line"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.min = -0.5
    xAxis.max = 5.5
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    options.yAxis = [yAxis]

    let line = HILine()
    line.name = "Regression Line"
    line.data = [[0, 1.11], [5, 4.51]]
    line.marker = HIMarker()
    line.marker.enabled = false
    line.states = HIStates()
    line.states.hover = HIHover()
    line.states.hover.lineWidth = 0
    line.enableMouseTracking = false

    let scatter = HIScatter()
    scatter.name = "Observations"
    scatter.data = [1, 1.5, 2.8, 3.5, 3.9, 4.2]
    scatter.marker = HIMarker()
    scatter.marker.radius = 4

    options.series = [line, scatter]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

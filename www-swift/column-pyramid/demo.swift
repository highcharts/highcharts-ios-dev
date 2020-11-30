import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let title = HITitle()
    title.text = "The 5 highest pyramids in the World"
    options.title = title

    options.colors = ["#C79D6D", "#B5927B", "#CE9B84", "#B7A58C", "#C7A58C"]

    let xAxis = HIXAxis()
    xAxis.crosshair = HICrosshair()
    xAxis.labels = HILabels()
    xAxis.labels.style = HICSSObject()
    xAxis.labels.style.fontSize =  "14px"
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Height (m)"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = " m"
    options.tooltip = tooltip

    let height = HIColumnpyramid()
    height.name = "Height"
    height.colorByPoint = true
    height.showInLegend = false
    height.data = [
      ["Pyramid of Khufu", 138.8],
      ["Pyramid of Khafre", 136.4],
      ["Red Pyramid", 104],
      ["Bent Pyramid", 101.1],
      ["Pyramid of the Sun", 75]
    ]

    options.series = [height]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

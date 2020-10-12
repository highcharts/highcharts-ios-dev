import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts Box Plot Example"
    options.title = title

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let xAxis = HIXAxis()
    xAxis.categories = ["1", "2", "3", "4", "5"]
    xAxis.title = HITitle()
    xAxis.title.text = "Experiment No."
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Observations"
    let plotLine = HIPlotLines()
    plotLine.value = 932
    plotLine.color = HIColor(name: "red")
    plotLine.width = 1
    plotLine.label = HILabel()
    plotLine.label.text = "Theoretical mean: 932"
    plotLine.label.align = "center"
    plotLine.label.style = HICSSObject()
    plotLine.label.style.color = "gray"
    yAxis.plotLines = [plotLine]
    options.yAxis = [yAxis]

    let observations = HIBoxplot()
    observations.name = "Observations"
    observations.data = [
      [760, 801, 848, 895, 965],
      [733, 853, 939, 980, 1080],
      [714, 762, 817, 870, 918],
      [724, 802, 806, 871, 950],
      [834, 836, 864, 882, 910]
    ]
    observations.tooltip = HITooltip()
    observations.tooltip.headerFormat = "<em>Experiment No {point.key}</em><br/>"

    let outliers = HIScatter()
    outliers.name = "Outliers"
    outliers.color = HIColor(hexValue: "7cb5ec")
    outliers.data = [ // x, y positions where 0 is the first category
      [0, 644],
      [4, 718],
      [4, 951],
      [4, 969]
    ]
    outliers.marker = HIMarker()
    outliers.marker.fillColor = HIColor(name: "white")
    outliers.marker.lineWidth = 1
    outliers.marker.lineColor = "#7cb5ec"
    outliers.tooltip = HITooltip()
    outliers.tooltip.pointFormat = "Observation: {point.y}"

    options.series = [observations, outliers]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["series-label"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Solar Employment Growth by Sector, 2010-2016"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: thesolarfoundation.com"
    options.subtitle = subtitle

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Number of Employees"
    options.yAxis = [yAxis]

    let xAxis = HIXAxis()
    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.rangeDescription = "Range: 2010 to 2017"
    options.xAxis = [xAxis]

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "right"
    legend.verticalAlign = "middle"
    options.legend = legend

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.label = HILabel()
    plotOptions.series.label.connectorAllowed = false
    plotOptions.series.pointStart = 2010
    options.plotOptions = plotOptions

    let installation = HISeries()
    installation.name = "Installation"
    installation.data = [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]

    let manufacturing = HISeries()
    manufacturing.name = "Manufacturing"
    manufacturing.data = [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]

    let salesDistribution = HISeries()
    salesDistribution.name = "Sales & Distribution"
    salesDistribution.data = [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]

    let projectDevelopment = HISeries()
    projectDevelopment.name = "Project Development"
    projectDevelopment.data = [NSNull(), NSNull(), 7988, 12169, 15112, 22452, 34400, 34227]

    let other = HISeries()
    other.name = "Other"
    other.data = [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]

    options.series = [installation, manufacturing, salesDistribution, projectDevelopment, other]

    let responsive = HIResponsive()
    let rules = HIRules()
    rules.condition = HICondition()
    rules.condition.maxWidth = 500
    rules.chartOptions = [
      "legend": [
         "layout": "horizontal",
         "align": "center",
         "verticalAlign": "bottom"
      ]
    ]
    responsive.rules = [rules]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

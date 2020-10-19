import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["funnel"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Sales funnel"
    options.title = title

    let plotOptions = HIPlotOptions()
    plotOptions.funnel = HIFunnel()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "<b>{point.name}</b> ({point.y:,.0f})"
    dataLabels.softConnector = true
    plotOptions.funnel.dataLabels = [dataLabels]
    plotOptions.funnel.center = ["40%", "50%"]
    plotOptions.funnel.neckWidth = "30%"
    plotOptions.funnel.neckHeight = "25%"
    plotOptions.funnel.width = "80%"
    options.plotOptions = plotOptions

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let funnel = HIFunnel()
    funnel.name = "Unique users"
    funnel.data = [
        ["Website visits", 15654],
        ["Downloads", 4064],
        ["Requested price list", 1987],
        ["Invoice sent", 976],
        ["Finalized", 846]
    ]
    options.series = [funnel]

    let responsive = HIResponsive()
    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "plotOptions": [
        "series": [
          "dataLabels": [
            "inside": true
          ],
          "center": ["50%", "50%"],
          "width": "100%"
        ]
      ]
    ]
    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

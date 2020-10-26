import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"
    chartView.plugins = ["variwide"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Labor Costs in Europe, 2016"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://ec.europa.eu/eurostat/web/labour-market/labour-costs/main-tables\">eurostat</a>"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let caption = HICaption()
    caption.text = "Column widths are proportional to GDP"
    options.caption = caption

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let variwide = HIVariwide()
    variwide.name = "Labor Costs"
    variwide.data = [
      ["Norway", 50.2, 335504],
      ["Denmark", 42, 277339],
      ["Belgium", 39.2, 421611],
      ["Sweden", 38, 462057],
      ["France", 35.6, 2228857],
      ["Netherlands", 34.3, 702641],
      ["Finland", 33.2, 215615],
      ["Germany", 33.0, 3144050],
      ["Austria", 32.7, 349344],
      ["Ireland", 30.4, 275567],
      ["Italy", 27.8, 1672438],
      ["United Kingdom", 26.7, 2366911],
      ["Spain", 21.3, 1113851],
      ["Greece", 14.2, 175887],
      ["Portugal", 13.7, 184933],
      ["Czech Republic", 10.2, 176564],
      ["Poland", 8.6, 424269],
      ["Romania", 5.5, 169578]
    ] as [Any]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "€{point.y:.0f}"
    variwide.dataLabels = [dataLabels]

    let tooltip = HITooltip()
    tooltip.pointFormat = "Labor Costs: <b>€ {point.y}/h</b><br>GDP: <b>€ {point.z} million</b><br>"
    variwide.tooltip = tooltip

    variwide.colorByPoint = true

    options.series = [variwide]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

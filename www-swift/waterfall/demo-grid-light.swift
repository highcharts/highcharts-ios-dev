import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts Waterfall"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "USD"
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.pointFormat = "<b>${point.y:,.2f}</b> USD"
    options.tooltip = tooltip

    let waterfall = HIWaterfall()
    waterfall.color = HIColor(hexValue: "910000")
    waterfall.upColor = HIColor(hexValue: "8bbc21")

    let start = HIData()
    start.name = "Start"
    start.y = 120000

    let productRevenue = HIData()
    productRevenue.name = "Product Revenue"
    productRevenue.y = 569000

    let serviceRevenue = HIData()
    serviceRevenue.name = "Service Revenue"
    serviceRevenue.y = 231000

    let positiveBalance = HIData()
    positiveBalance.color = HIColor(hexValue: "0d233a")
    positiveBalance.isIntermediateSum = true

    let fixedCosts = HIData()
    fixedCosts.name = "Fixed Costs"
    fixedCosts.y = -342000

    let variableCosts = HIData()
    variableCosts.name = "Variable Costs"
    variableCosts.y = -342000

    let balance = HIData()
    balance.name = "Balance"
    balance.isSum = true
    balance.color = HIColor(hexValue: "0d233a")

    waterfall.data = [start, productRevenue, serviceRevenue, positiveBalance, fixedCosts, variableCosts, balance]

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.formatter = HIFunction(jsFunction: "function () { return Highcharts.numberFormat(this.y / 1000, 0, ',') + 'k'; }")
    dataLabels.style = HIStyle()
    dataLabels.style.fontWeight = "bold"
    waterfall.dataLabels = [dataLabels]

    waterfall.pointPadding = 0

    options.series = [waterfall]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

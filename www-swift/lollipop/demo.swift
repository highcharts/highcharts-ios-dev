import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["dumbbell", "lollipop"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "lollipop"
    options.chart = chart

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. {xDescription}, {point.y}."
    options.accessibility = accessibility

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let title = HITitle()
    title.text = "Top 10 Countries by Population"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "2018"
    options.subtitle = subtitle

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let xAxis = HIXAxis()
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Population"
    options.yAxis = [yAxis]

    let lollipop = HILollipop()
    lollipop.name = "Population"

    let china = HIData()
    china.name = "China"
    china.low = 1427647786

    let india = HIData()
    india.name = "India"
    india.low = 1352642280

    let us = HIData()
    us.name = "United States"
    us.low = 327096265

    let indonesia = HIData()
    indonesia.name = "Indonesia"
    indonesia.low = 267670543

    let pakistan = HIData()
    pakistan.name = "Pakistan"
    pakistan.low = 212228286

    let brazil = HIData()
    brazil.name = "Brazil"
    brazil.low = 209469323

    let nigeria = HIData()
    nigeria.name = "Nigeria"
    nigeria.low = 195874683

    let bangladesh = HIData()
    bangladesh.name = "Bangladesh"
    bangladesh.low = 161376708

    let russia = HIData()
    russia.name = "Russia"
    russia.low = 145734038

    let mexico = HIData()
    mexico.name = "Mexico"
    mexico.low = 126190788

    lollipop.data = [china, india, us, indonesia, pakistan, brazil, nigeria, bangladesh, russia, mexico]

    options.series = [lollipop]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

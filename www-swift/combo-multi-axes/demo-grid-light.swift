import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.zoomType = "xy"
    options.chart = chart

    let title = HITitle()
    title.text = "Average Monthly Weather Data for Tokyo"
    title.align = "left"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: WorldClimate.com"
    subtitle.align = "left"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    xAxis.crosshair = HICrosshair()
    options.xAxis = [xAxis]

    let primaryYAxis = HIYAxis()
    primaryYAxis.labels = HILabels()
    primaryYAxis.labels.format = "{value}°C"
    primaryYAxis.labels.style = HICSSObject()
    primaryYAxis.labels.style.color = "#90ed7d"
    primaryYAxis.title = HITitle()
    primaryYAxis.title.text = "Temperature"
    primaryYAxis.title.style = HICSSObject()
    primaryYAxis.title.style.color = "#90ed7d"
    primaryYAxis.opposite = true

    let secondaryYAxis = HIYAxis()
    secondaryYAxis.gridLineWidth = 0
    secondaryYAxis.title = HITitle()
    secondaryYAxis.title.text = "Rainfall"
    secondaryYAxis.title.style = HICSSObject()
    secondaryYAxis.title.style.color = "#7cb5ec"
    secondaryYAxis.labels = HILabels()
    secondaryYAxis.labels.format = "{value} mm"
    secondaryYAxis.labels.style = HICSSObject()
    secondaryYAxis.labels.style.color = "#7cb5ec"

    let tertiaryYAxis = HIYAxis()
    tertiaryYAxis.gridLineWidth = 0
    tertiaryYAxis.title = HITitle()
    tertiaryYAxis.title.text = "Sea-Level Pressure"
    tertiaryYAxis.title.style = HICSSObject()
    tertiaryYAxis.title.style.color = "#434348"
    tertiaryYAxis.labels = HILabels()
    tertiaryYAxis.labels.format = "{value} mb"
    tertiaryYAxis.labels.style = HICSSObject()
    tertiaryYAxis.labels.style.color = "#434348"
    tertiaryYAxis.opposite = true

    options.yAxis = [primaryYAxis, secondaryYAxis, tertiaryYAxis]

    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip

    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "left"
    legend.x = 80
    legend.verticalAlign = "top"
    legend.y = 55
    legend.floating = true
    legend.backgroundColor = HIColor(rgba: 255, green: 255, blue: 255, alpha: 0.25)
    options.legend = legend

    let rainfall = HIColumn()
    rainfall.name = "Rainfall"
    rainfall.yAxis = 1
    rainfall.data = [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    rainfall.tooltip = HITooltip()
    rainfall.tooltip.valueSuffix = " mm"

    let pressure = HISpline()
    pressure.name = "Sea-Level Pressure"
    pressure.yAxis = 2
    pressure.data = [1016, 1016, 1015.9, 1015.5, 1012.3, 1009.5, 1009.6, 1010.2, 1013.1, 1016.9, 1018.2, 1016.7]
    pressure.marker = HIMarker()
    pressure.marker.enabled = false
    pressure.dashStyle = "shortdot"
    pressure.tooltip = HITooltip()
    pressure.tooltip.valueSuffix = " mb"

    let temperature = HISpline()
    temperature.name = "Temperature"
    temperature.data = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    temperature.tooltip = HITooltip()
    temperature.tooltip.valueSuffix = " °C"

    options.series = [rainfall, pressure, temperature]

    let responsive = HIResponsive()

    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "legend": [
        "floating": false,
        "layout": "horizontal",
        "align": "center",
        "verticalAlign": "bottom",
        "x": 0,
        "y": 0
      ],
      "yAxis": [
        [
          "showLastLabel": false,
          "labels": [
            "align": "right",
            "x": 0,
            "y": -6
          ]
        ],
        [
          "showLastLabel": false,
          "labels": [
            "align": "left",
            "x": 0,
            "y": -6
          ]
        ],
        [
          "visible": false
        ]
      ]
    ]

    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

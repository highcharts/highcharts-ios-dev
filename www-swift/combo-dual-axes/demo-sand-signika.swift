import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()
    
    let chart = HIChart()
    chart.zoomType = "xy"
    options.chart = chart
    
    let title = HITitle()
    title.text = "Average Monthly Temperature and Rainfall in Tokyo"
    options.title = title
    
    let subtitle = HISubtitle()
    subtitle.text = "Source: WorldClimate.com"
    options.subtitle = subtitle
    
    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    xAxis.crosshair = HICrosshair()
    options.xAxis = [xAxis]
    
    let yAxis1 = HIYAxis()
    yAxis1.labels = HILabels()
    yAxis1.labels.format = "{value}°C"
    yAxis1.labels.style = HICSSObject()
    yAxis1.labels.style.color = "#434348"
    yAxis1.title = HITitle()
    yAxis1.title.text = "Temperature"
    yAxis1.title.style = HICSSObject()
    yAxis1.title.style.color = "#434348"
    
    let yAxis2 = HIYAxis()
    yAxis2.title = HITitle()
    yAxis2.title.text = "Rainfall"
    yAxis2.title.style = HICSSObject()
    yAxis2.title.style.color = "#7cb5ec"
    yAxis2.labels = HILabels()
    yAxis2.labels.format = "{value} mm"
    yAxis2.labels.style = HICSSObject()
    yAxis2.labels.style.color = "#7cb5ec"
    yAxis2.opposite = true
    
    options.yAxis = [yAxis1, yAxis2]
    
    let tooltip = HITooltip()
    tooltip.shared = true
    options.tooltip = tooltip
    
    let legend = HILegend()
    legend.layout = "vertical"
    legend.align = "left"
    legend.x = 120
    legend.verticalAlign = "top"
    legend.y = 100
    legend.floating = true
    legend.backgroundColor = HIColor(name: "rgba(255,255,255,0.25)")
    options.legend = legend
    
    let column = HIColumn()
    column.name = "Rainfall"
    column.yAxis = 1
    column.data = [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
    column.tooltip = HITooltip()
    column.tooltip.valueSuffix = " mm"
    
    let spline = HISpline()
    spline.name = "Temperature"
    spline.data = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
    spline.tooltip = HITooltip()
    spline.tooltip.valueSuffix = "°C"
    
    options.series = [column, spline]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

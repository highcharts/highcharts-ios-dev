import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["series-label"]

    let options = HIOptions()

    let chart = HIChart()
    chart.scrollablePlotArea = HIScrollablePlotArea()
    chart.scrollablePlotArea.minWidth = 700
    options.chart = chart

    let data = HIData()
    data.csvURL = "https://cdn.jsdelivr.net/gh/highcharts/highcharts@v7.0.0/samples/data/analytics.csv"
    data.beforeParse = HIFunction(jsFunction: "function (csv) { return csv.replace(/\n\n/g, '\n'); }")
    options.data = data

    let title = HITitle()
    title.text = "Daily sessions at www.highcharts.com"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: Google Analytics"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.tickInterval = 7 * 24 * 3600 * 1000 as NSNumber // one week
    xAxis.tickWidth = 0
    xAxis.gridLineWidth = 1
    xAxis.labels = HILabels()
    xAxis.labels.align = "left"
    xAxis.labels.x = 3
    xAxis.labels.y = -3
    options.xAxis = [xAxis]

    let leftYAxis = HIYAxis()
    leftYAxis.labels = HILabels()
    leftYAxis.labels.align = "left"
    leftYAxis.labels.x = 3
    leftYAxis.labels.y = 16
    leftYAxis.labels.format = "{value:.,0f}"
    leftYAxis.showFirstLabel = false

    let rightYAxis = HIYAxis()
    rightYAxis.linkedTo = 0
    rightYAxis.gridLineWidth = 0
    rightYAxis.opposite = true
    rightYAxis.labels = HILabels()
    rightYAxis.labels.align = "right"
    rightYAxis.labels.x = -3
    rightYAxis.labels.y = 16
    rightYAxis.labels.format = "{value:.,0f}"
    rightYAxis.showFirstLabel = false

    options.yAxis = [leftYAxis, rightYAxis]

    let legend = HILegend()
    legend.align = "left"
    legend.verticalAlign = "top"
    legend.borderWidth = 0
    options.legend = legend

    let tooltip = HITooltip()
    tooltip.shared = true
//    tooltip.crosshairs = true
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.cursor = "pointer"
    plotOptions.series.point = HIPoint()
    plotOptions.series.point.events = HIEvents()
    plotOptions.series.point.events.click = HIFunction(jsFunction: "function (e) { hs.htmlExpand(null, { pageOrigin: { x: e.pageX || e.clientX, y: e.pageY || e.clientY }, headingText: this.series.name, maincontentText: Highcharts.dateFormat('%A, %b %e, %Y', this.x) + ':<br/> ' + this.y + ' sessions', width: 200 }); }")
    plotOptions.series.marker = HIMarker()
    plotOptions.series.marker.lineWidth = 1
    options.plotOptions = plotOptions

    let allSessions = HISeries()
    allSessions.name = "All sessions"
    allSessions.lineWidth = 4
    allSessions.marker = HIMarker()
    allSessions.marker.radius = 4

    let newUsers = HISeries()

    options.series = [allSessions, newUsers]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

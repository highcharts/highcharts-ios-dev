import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "spline"
    chart.marginRight = 10
    chart.events = HIEvents()
    chart.events.load = HIFunction(jsFunction: "function () { var series = this.series[0]; setInterval(function () { var x = (new Date()).getTime(), // current time y = Math.random(); series.addPoint([x, y], true, true); }, 1000); }")
    options.chart = chart

    let time = HITime()
    time.useUTC = true
    options.time = time

    let title = HITitle()
    title.text = "Live random data"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.announceNewData = HIAnnounceNewData()
    accessibility.announceNewData.enabled = true
    accessibility.announceNewData.minAnnounceInterval = 15000
    accessibility.announceNewData.announcementFormatter = HIFunction(jsFunction: "function (allSeries, newSeries, newPoint) { if (newPoint) { return 'New point added. Value: ' + newPoint.y; } return false; }")
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.type = "datetime"
    xAxis.tickPixelInterval = 150
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Value"
    let plotLines = HIPlotLines()
    plotLines.value = 0
    plotLines.width = 1
    plotLines.color = HIColor(hexValue: "808080")
    yAxis.plotLines = [plotLines]
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{series.name}</b><br/>"
    tooltip.pointFormat = "{point.x:%Y-%m-%d %H:%M:%S}<br/>{point.y:.2f}"
    options.tooltip = tooltip

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let exporting = HIExporting()
    exporting.enabled = false
    options.exporting = exporting

    let spline = HISpline()
    spline.name = "Random data"
    spline.data = [
      [ "x": 1506522303996, "y": 0.9008867958057089 ],
      [ "x": 1506522304996, "y": 0.8231864980698256 ],
      [ "x": 1506522305996, "y": 0.9825011509882808 ],
      [ "x": 1506522306996, "y": 0.003652610490540442 ],
      [ "x": 1506522307996, "y": 0.002609150181310582 ],
      [ "x": 1506522308996, "y": 0.01461317357831804 ],
      [ "x": 1506522309996, "y": 0.8999787609990089 ],
      [ "x": 1506522310996, "y": 0.14058473457764165 ],
      [ "x": 1506522311996, "y": 0.34443475714783733 ],
      [ "x": 1506522312996, "y": 0.5556814038393371 ],
      [ "x": 1506522313996, "y": 0.6196520717912178 ],
      [ "x": 1506522314996, "y": 0.03434593570780475 ],
      [ "x": 1506522315996, "y": 0.2980087069912135 ],
      [ "x": 1506522316996, "y": 0.7572371332071955 ],
      [ "x": 1506522317996, "y": 0.6794544224961554 ],
      [ "x": 1506522318996, "y": 0.07563910614922953 ],
      [ "x": 1506522319996, "y": 0.049179773664749016 ],
      [ "x": 1506522320996, "y": 0.6572695585799792 ],
      [ "x": 1506522321996, "y": 0.3828701378166286 ],
      [ "x": 1506522322996, "y": 0.2583323455534311 ]
    ]
    options.series = [spline]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

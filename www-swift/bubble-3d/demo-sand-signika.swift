import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "bubble"
    chart.plotBorderWidth = 1
    chart.zoomType = "xy"
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts bubbles with radial gradient fill"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://www.euromonitor.com/\">Euromonitor</a> and <a href=\"https://data.oecd.org/\">OECD</a>"
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. {point.name}, fat: {point.x}g, sugar: {point.y}g, obesity: {point.z}%."
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.gridLineWidth = 1
    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.rangeDescription = "Range: 0 to 100."
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.startOnTick = false
    yAxis.endOnTick = false
    yAxis.accessibility = HIAccessibility()
    yAxis.accessibility.rangeDescription = "Range: 0 to 100."
    options.yAxis = [yAxis]

    let bubble1 = HIBubble()
    bubble1.data = [
        [9, 81, 63],
        [98, 5, 89],
        [51, 50, 73],
        [41, 22, 14],
        [58, 24, 20],
        [78, 37, 34],
        [55, 56, 53],
        [18, 45, 70],
        [42, 44, 28],
        [3, 52, 59],
        [31, 18, 97],
        [79, 91, 63],
        [93, 23, 23],
        [44, 83, 22]
    ]
    bubble1.marker = HIMarker()
    bubble1.marker.fillColor = HIColor(radialGradient: ["cx": 0.4, "cy": 0.3, "r": 0.7], stops: [[0, "rgba(255,255,255,0.5)"], [1, "rgba(124,181,236,0.5)"]])

    let bubble2 = HIBubble()
    bubble2.data = [
        [42, 38, 20],
        [6, 18, 1],
        [1, 93, 55],
        [57, 2, 90],
        [80, 76, 22],
        [11, 74, 96],
        [88, 56, 10],
        [30, 47, 49],
        [57, 62, 98],
        [4, 16, 16],
        [46, 10, 11],
        [22, 87, 89],
        [57, 91, 82],
        [45, 15, 98]
    ]
    bubble2.marker = HIMarker()
    bubble2.marker.fillColor = HIColor(radialGradient: ["cx": 0.4, "cy": 0.3, "r": 0.7], stops: [[0, "rgba(255,255,255,0.5)"], [1, "rgba(67,67,72,0.5)"]])


    options.series = [bubble1, bubble2]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

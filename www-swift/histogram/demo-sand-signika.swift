import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"
    chartView.plugins = ["histogram-bellcurve"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts Histogram"
    options.title = title

    let xAxisData = HIXAxis()
    xAxisData.title = HITitle()
    xAxisData.title.text = "Data"
    xAxisData.alignTicks = false

    let xAxisHistogram = HIXAxis()
    xAxisHistogram.title = HITitle()
    xAxisHistogram.title.text = "Histogram"
    xAxisHistogram.alignTicks = false
    xAxisHistogram.opposite = true

    options.xAxis = [xAxisData, xAxisHistogram]

    let yAxisData = HIYAxis()
    yAxisData.title = HITitle()
    yAxisData.title.text = "Data"

    let yAxisHistogram = HIYAxis()
    yAxisHistogram.title = HITitle()
    yAxisHistogram.title.text = "Histogram"
    yAxisHistogram.opposite = true

    options.yAxis = [yAxisData, yAxisHistogram]

    let plotOptions = HIPlotOptions()
    plotOptions.histogram = HIHistogram()
    plotOptions.histogram.accessibility = HIAccessibility()
    plotOptions.histogram.accessibility.pointDescriptionFormatter = HIFunction(jsFunction: "function (point) { var ix = point.index + 1, x1 = point.x.toFixed(3), x2 = point.x2.toFixed(3), val = point.y; return ix + '. ' + x1 + ' to ' + x2 + ', ' + val + '.'; }")
    options.plotOptions = plotOptions

    let histogram = HIHistogram()
    histogram.name = "Histogram"
    histogram.xAxis = 1
    histogram.yAxis = 1
    histogram.baseSeries = "s1"
    histogram.zIndex = -1

    let data = HIScatter()
    data.name = "Data"
    data.data = [3.5, 3, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3, 3, 4, 4.4, 3.9, 3.5, 3.8, 3.8, 3.4, 3.7, 3.6, 3.3, 3.4, 3, 3.4, 3.5, 3.4, 3.2, 3.1, 3.4, 4.1, 4.2, 3.1, 3.2, 3.5, 3.6, 3, 3.4, 3.5, 2.3, 3.2, 3.5, 3.8, 3, 3.8, 3.2, 3.7, 3.3, 3.2, 3.2, 3.1, 2.3, 2.8, 2.8, 3.3, 2.4, 2.9, 2.7, 2, 3, 2.2, 2.9, 2.9, 3.1, 3, 2.7, 2.2, 2.5, 3.2, 2.8, 2.5, 2.8, 2.9, 3, 2.8, 3, 2.9, 2.6, 2.4, 2.4, 2.7, 2.7, 3, 3.4, 3.1, 2.3, 3, 2.5, 2.6, 3, 2.6, 2.3, 2.7, 3, 2.9, 2.9, 2.5, 2.8, 3.3, 2.7, 3, 2.9, 3, 3, 2.5, 2.9, 2.5, 3.6, 3.2, 2.7, 3, 2.5, 2.8, 3.2, 3, 3.8, 2.6, 2.2, 3.2, 2.8, 2.8, 2.7, 3.3, 3.2, 2.8, 3, 2.8, 3, 2.8, 3.8, 2.8, 2.8, 2.6, 3, 3.4, 3.1, 3, 3.1, 3.1, 3.1, 2.7, 3.2, 3.3, 3, 2.5, 3, 3.4, 3]
    data.id = "s1"
    data.marker = HIMarker()
    data.marker.radius = 1.5

    options.series = [histogram, data]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

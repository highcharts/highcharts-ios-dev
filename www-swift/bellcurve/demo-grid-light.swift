import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["histogram-bellcurve"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Bell curve"
    options.title = title

    let xAxisData = HIXAxis()
    xAxisData.title = HITitle()
    xAxisData.title.text = "Data"
    xAxisData.alignTicks = false

    let xAxisBellCurve = HIXAxis()
    xAxisBellCurve.title = HITitle()
    xAxisBellCurve.title.text = "Bell curve"
    xAxisBellCurve.alignTicks = false
    xAxisBellCurve.opposite = true

    options.xAxis = [xAxisData, xAxisBellCurve]

    let yAxisData = HIYAxis()
    yAxisData.title = HITitle()
    yAxisData.title.text = "Data"

    let yAxisBellCurve = HIYAxis()
    yAxisBellCurve.title = HITitle()
    yAxisBellCurve.title.text = "Bell curve"
    yAxisBellCurve.opposite = true

    options.yAxis = [yAxisData, yAxisBellCurve]

    let bellcurve = HIBellcurve()
    bellcurve.name = "Bell curve"
    bellcurve.xAxis = 1
    bellcurve.yAxis = 1
    bellcurve.baseSeries = 1
    bellcurve.zIndex = -1

    let data = HIScatter()
    data.name = "Data"
    data.data =  [3.5, 3, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3, 3, 4,
                  4.4, 3.9, 3.5, 3.8, 3.8, 3.4, 3.7, 3.6, 3.3, 3.4, 3, 3.4, 3.5, 3.4, 3.2,
                  3.1, 3.4, 4.1, 4.2, 3.1, 3.2, 3.5, 3.6, 3, 3.4, 3.5, 2.3, 3.2, 3.5, 3.8, 3,
                  3.8, 3.2, 3.7, 3.3, 3.2, 3.2, 3.1, 2.3, 2.8, 2.8, 3.3, 2.4, 2.9, 2.7, 2, 3,
                  2.2, 2.9, 2.9, 3.1, 3, 2.7, 2.2, 2.5, 3.2, 2.8, 2.5, 2.8, 2.9, 3, 2.8, 3,
                  2.9, 2.6, 2.4, 2.4, 2.7, 2.7, 3, 3.4, 3.1, 2.3, 3, 2.5, 2.6, 3, 2.6, 2.3,
                  2.7, 3, 2.9, 2.9, 2.5, 2.8, 3.3, 2.7, 3, 2.9, 3, 3, 2.5, 2.9, 2.5, 3.6,
                  3.2, 2.7, 3, 2.5, 2.8, 3.2, 3, 3.8, 2.6, 2.2, 3.2, 2.8, 2.8, 2.7, 3.3, 3.2,
                  2.8, 3, 2.8, 3, 2.8, 3.8, 2.8, 2.8, 2.6, 3, 3.4, 3.1, 3, 3.1, 3.1, 3.1, 2.7,
                  3.2, 3.3, 3, 2.5, 3, 3.4, 3]
    data.accessibility = HIAccessibility()
    data.accessibility.exposeAsGroupOnly = true
    data.marker = HIMarker()
    data.marker.radius = 1.5

    options.series = [bellcurve, data]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

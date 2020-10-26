import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["windbarb"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts Wind Barbs"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.type = "datetime"
    xAxis.offset = 40
    options.xAxis = [xAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.pointStart = 1485648000000
    plotOptions.series.pointInterval = 36e5
    options.plotOptions = plotOptions

    let wind = HIWindbarb()
    wind.name = "Wind"
    wind.data = [
      [9.8, 177.9],
      [10.1, 177.2],
      [11.3, 179.7],
      [10.9, 175.5],
      [9.3, 159.9],
      [8.8, 159.6],
      [7.8, 162.6],
      [5.6, 186.2],
      [6.8, 146.0],
      [6.4, 139.9],
      [3.1, 180.2],
      [4.3, 177.6],
      [5.3, 191.8],
      [6.3, 173.1],
      [7.7, 140.2],
      [8.5, 136.1],
      [9.4, 142.9],
      [10.0, 140.4],
      [5.3, 142.1],
      [3.8, 141.0],
      [3.3, 116.5],
      [1.5, 327.5],
      [0.1, 1.1],
      [1.2, 11.1]
    ]
    wind.color = HIColor(hexValue: "0d233a")
    wind.showInLegend = false
    wind.tooltip = HITooltip()
    wind.tooltip.valueSuffix = " m/s"

    let windSpeed = HIArea()
    windSpeed.name = "Wind speed"
    windSpeed.data = [
      [9.8, 177.9],
      [10.1, 177.2],
      [11.3, 179.7],
      [10.9, 175.5],
      [9.3, 159.9],
      [8.8, 159.6],
      [7.8, 162.6],
      [5.6, 186.2],
      [6.8, 146.0],
      [6.4, 139.9],
      [3.1, 180.2],
      [4.3, 177.6],
      [5.3, 191.8],
      [6.3, 173.1],
      [7.7, 140.2],
      [8.5, 136.1],
      [9.4, 142.9],
      [10.0, 140.4],
      [5.3, 142.1],
      [3.8, 141.0],
      [3.3, 116.5],
      [1.5, 327.5],
      [0.1, 1.1],
      [1.2, 11.1]
    ]
    windSpeed.keys = ["y", "rotation"]
    windSpeed.color = HIColor(hexValue: "2f7ed8")
    windSpeed.fillColor = HIColor(linearGradient: ["x1": 0, "y1": 0, "x2:": 0, "y2": 1],
                                  stops: [[0, "#2f7ed8"], [1, "rgba(47, 126, 216, 0.25)"]])
    wind.tooltip = HITooltip()
    wind.tooltip.valueSuffix = " m/s"
    wind.states = HIStates()
    wind.states.inactive = HIInactive()
    wind.states.inactive.opacity = 1

    options.series = [wind, windSpeed]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

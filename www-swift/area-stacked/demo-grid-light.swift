import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "area"
    options.chart = chart

    let title = HITitle()
    title.text = "Historic and Estimated Worldwide Population Growth by Region"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: Wikipedia.org"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.categories = ["1750", "1800", "1850", "1900", "1950", "1999", "2050"]
    xAxis.tickmarkPlacement = "on"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Billions"
    yAxis.labels = HILabels()
    yAxis.labels.formatter = HIFunction(jsFunction: "function () { return this.value / 1000; }")
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.split = true
    tooltip.valueSuffix = " millions"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.area = HIArea()
    plotOptions.area.stacking = "normal"
    plotOptions.area.lineColor = HIColor(hexValue: "666666")
    plotOptions.area.lineWidth = 1
    plotOptions.area.marker = HIMarker()
    plotOptions.area.marker.lineWidth = 1
    plotOptions.area.marker.lineColor = "#666666"
    options.plotOptions = plotOptions

    let asia = HIArea()
    asia.name = "Asia"
    asia.data = [502, 635, 809, 947, 1402, 3634, 5268]

    let africa = HIArea()
    africa.name = "Africa"
    africa.data = [106, 107, 111, 133, 221, 767, 1766]

    let europe = HIArea()
    europe.name = "Europe"
    europe.data = [163, 203, 276, 408, 547, 729, 628]

    let america = HIArea()
    america.name = "America"
    america.data = [18, 31, 54, 156, 339, 818, 1201]

    let oceania = HIArea()
    oceania.name = "Oceania"
    oceania.data = [2, 2, 2, 6, 13, 30, 46]

    options.series = [asia, africa, europe, america, oceania]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}
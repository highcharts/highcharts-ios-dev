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
    chart.type = "spline"
    chart.scrollablePlotArea = HIScrollablePlotArea()
    chart.scrollablePlotArea.minWidth = 600
    chart.scrollablePlotArea.scrollPositionX = 1
    options.chart = chart

    let title = HITitle()
    title.text = "Wind speed during two days"
    title.align = "left"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "13th & 14th of February, 2018 at two locations in Vik i Sogn, Norway"
    subtitle.align = "left"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.type = "datetime"
    xAxis.labels = HILabels()
    xAxis.labels.overflow = "justify"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Wind speed (m/s)"
    yAxis.minorGridLineWidth = 0
    yAxis.gridLineWidth = 0

    let lightAir = HIPlotBands()
    lightAir.from = 0.3
    lightAir.to = 1.5
    lightAir.color = HIColor(name: "rgba(68, 170, 213, 0.1)")
    lightAir.label = HILabel()
    lightAir.label.text = "Light air"
    lightAir.label.style = HICSSObject()
    lightAir.label.style.color = "#606060"

    let lightBreeze = HIPlotBands()
    lightBreeze.from = 1.5
    lightBreeze.to = 3.3
    lightBreeze.color = HIColor(name: "rgba(0, 0, 0, 0)")
    lightBreeze.label = HILabel()
    lightBreeze.label.text = "Light breeze"
    lightBreeze.label.style = HICSSObject()
    lightBreeze.label.style.color = "#606060"

    let gentleBreeze = HIPlotBands()
    gentleBreeze.from = 3.3
    gentleBreeze.to = 5.5
    gentleBreeze.color = HIColor(name: "rgba(68, 170, 213, 0.1)")
    gentleBreeze.label = HILabel()
    gentleBreeze.label.text = "Gentle breeze"
    gentleBreeze.label.style = HICSSObject()
    gentleBreeze.label.style.color = "#606060"

    let moderateBreeze = HIPlotBands()
    moderateBreeze.from = 5.5
    moderateBreeze.to = 8
    moderateBreeze.color = HIColor(name: "rgba(0, 0, 0, 0)")
    moderateBreeze.label = HILabel()
    moderateBreeze.label.text = "Moderate breeze"
    moderateBreeze.label.style = HICSSObject()
    moderateBreeze.label.style.color = "#606060"

    let freshBreeze = HIPlotBands()
    freshBreeze.from = 8
    freshBreeze.to = 11
    freshBreeze.color = HIColor(name: "rgba(68, 170, 213, 0.1)")
    freshBreeze.label = HILabel()
    freshBreeze.label.text = "Fresh breeze"
    freshBreeze.label.style = HICSSObject()
    freshBreeze.label.style.color = "#606060"

    let strongBreeze = HIPlotBands()
    strongBreeze.from = 11
    strongBreeze.to = 14
    strongBreeze.color = HIColor(name: "rgba(0, 0, 0, 0)")
    strongBreeze.label = HILabel()
    strongBreeze.label.text = "Strong breeze"
    strongBreeze.label.style = HICSSObject()
    strongBreeze.label.style.color = "#606060"

    let highWind = HIPlotBands()
    highWind.from = 14
    highWind.to = 15
    highWind.color = HIColor(name: "rgba(68, 170, 213, 0.1)")
    highWind.label = HILabel()
    highWind.label.text = "High wind"
    highWind.label.style = HICSSObject()
    highWind.label.style.color = "#606060"

    yAxis.plotBands = [lightAir, lightBreeze, gentleBreeze, moderateBreeze, freshBreeze, strongBreeze, highWind]
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = " m/s"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.spline = HISpline()
    plotOptions.spline.lineWidth = 4
    plotOptions.spline.states = HIStates()
    plotOptions.spline.states.hover = HIHover()
    plotOptions.spline.states.hover.lineWidth = 5
    plotOptions.spline.marker = HIMarker()
    plotOptions.spline.marker.enabled = false
    plotOptions.spline.pointInterval = 3600000 // one hour
    plotOptions.spline.pointStart = 1515798000000
    options.plotOptions = plotOptions

    let hestavollane = HISpline()
    hestavollane.name = "Hestavollane"
    hestavollane.data = [
        3.7, 3.3, 3.9, 5.1, 3.5, 3.8, 4.0, 5.0, 6.1, 3.7, 3.3, 6.4,
        6.9, 6.0, 6.8, 4.4, 4.0, 3.8, 5.0, 4.9, 9.2, 9.6, 9.5, 6.3,
        9.5, 10.8, 14.0, 11.5, 10.0, 10.2, 10.3, 9.4, 8.9, 10.6, 10.5, 11.1,
        10.4, 10.7, 11.3, 10.2, 9.6, 10.2, 11.1, 10.8, 13.0, 12.5, 12.5, 11.3,
        10.1
    ]

    let vik = HISpline()
    vik.name = "Vik"
    vik.data = [
            0.2, 0.1, 0.1, 0.1, 0.3, 0.2, 0.3, 0.1, 0.7, 0.3, 0.2, 0.2,
            0.3, 0.1, 0.3, 0.4, 0.3, 0.2, 0.3, 0.2, 0.4, 0.0, 0.9, 0.3,
            0.7, 1.1, 1.8, 1.2, 1.4, 1.2, 0.9, 0.8, 0.9, 0.2, 0.4, 1.2,
            0.3, 2.3, 1.0, 0.7, 1.0, 0.8, 2.0, 1.2, 1.4, 3.7, 2.1, 2.0,
            1.5
        ]

    options.series = [hestavollane, vik]

    let navigation = HINavigation()
    navigation.menuItemStyle = HICSSObject()
    navigation.menuItemStyle.fontSize = "10px"
    options.navigation = navigation

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

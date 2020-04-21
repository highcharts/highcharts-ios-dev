import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["series-label"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "spline"
    options.chart = chart

    let title = HITitle()
    title.text = "Snow depth at Vikjafjellet, Norway"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Irregular time data in Highcharts JS"
    options.subtitle = subtitle

    let xAxis = HIXAxis()
    xAxis.type = "datetime"
    xAxis.title = HITitle()
    xAxis.title.text = "Date"
    xAxis.dateTimeLabelFormats = HIDateTimeLabelFormats() // don't display the dummy year
    xAxis.dateTimeLabelFormats.month = HIMonth()
    xAxis.dateTimeLabelFormats.month.main = "%e. %b"
    xAxis.dateTimeLabelFormats.year = HIYear()
    xAxis.dateTimeLabelFormats.year.main = "%b"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Snow depth (m)"
    yAxis.min = 0
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = "<b>{series.name}</b><br>"
    tooltip.pointFormat = "{point.x:%e. %b}: {point.y:.2f} m"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.marker = HIMarker()
    plotOptions.series.marker.enabled = true
    options.plotOptions = plotOptions

    let colors = ["#6CF", "#39F", "#06C", "#036", "#000"]
    options.colors = colors

    // Define the data points. All series have a dummy year
    // of 1970/71 in order to be compared on the same x axis. Note
    // that in JavaScript, months start at 0 for January, 1 for February etc.

    let winter20142015 = HISpline()
    winter20142015.name = "Winter 2014-2015"
    winter20142015.data = [
      [25653600000, 0],
      [26694000000, 0.25],
      [27903600000, 1.41],
      [28335600000, 1.64],
      [29113200000, 1.6],
      [30236400000, 2.55],
      [30841200000, 2.62],
      [31791600000, 2.5],
      [32655600000, 2.42],
      [34642800000, 2.74],
      [35334000000, 2.62],
      [36198000000, 2.6],
      [36630000000, 2.81],
      [37494000000, 2.63],
      [38876400000, 2.77],
      [39564000000, 2.68],
      [39996000000, 2.56],
      [40428000000, 2.39],
      [40860000000, 2.3],
      [42156000000, 2],
      [42588000000, 1.85],
      [43020000000, 1.49],
      [43452000000, 1.27],
      [43884000000, 0.99],
      [44316000000, 0.67],
      [44748000000, 0.18],
      [44748000000, 0]
    ]

    let winter20152016 = HISpline()
    winter20152016.name = "Winter 2015-2016"
    winter20152016.data = [
      [24271200000, 0],
      [24789600000, 0.23],
      [25221600000, 0.25],
      [25653600000, 0.23],
      [26089200000, 0.39],
      [26607600000, 0.41],
      [27039600000, 0.59],
      [27471600000, 0.73],
      [27903600000, 0.41],
      [28335600000, 1.07],
      [28767600000, 0.88],
      [29199600000, 0.85],
      [29718000000, 0.89],
      [30236400000, 1.04],
      [30495600000, 1.02],
      [30927600000, 1.03],
      [31359600000, 1.39],
      [31878000000, 1.77],
      [33692400000, 2.12],
      [38185200000, 2.1],
      [39996000000, 1.7],
      [41724000000, 0.85],
      [42415200000, 0]
    ]

    let winter20162017 = HISpline()
    winter20162017.name = "2016-2017"
    winter20162017.data = [
      [22197600000, 0],
      [23580000000, 0.09],
      [24098400000, 0.17],
      [24357600000, 0.1],
      [27039600000, 0.1],
      [27298800000, 0.1],
      [27558000000, 0.11],
      [27817200000, 0.11],
      [28076400000, 0.08],
      [28335600000, 0.23],
      [28594800000, 0.37],
      [30150000000, 0.68],
      [30409200000, 0.55],
      [30668400000, 0.4],
      [30927600000, 0.4],
      [31186800000, 0.37],
      [31446000000, 0.43],
      [31791600000, 0.42],
      [32050800000, 0.39],
      [32310000000, 0.39],
      [32569200000, 0.39],
      [32828400000, 0.39],
      [33087600000, 0.35],
      [33346800000, 0.45],
      [33606000000, 0.62],
      [33865200000, 0.68],
      [34470000000, 0.68],
      [34729200000, 0.65],
      [34988400000, 0.65],
      [35247600000, 0.75],
      [35506800000, 0.86],
      [35766000000, 1.14],
      [36025200000, 1.2],
      [36284400000, 1.27],
      [36457200000, 1.12],
      [36716400000, 0.98],
      [36802800000, 0.85],
      [37062000000, 1.04],
      [37321200000, 0.92],
      [37580400000, 0.96],
      [37839600000, 0.94],
      [38098800000, 0.99],
      [38358000000, 0.96],
      [38617200000, 1.15],
      [38876400000, 1.18],
      [39132000000, 1.12],
      [39477600000, 1.06],
      [39736800000, 0.96],
      [39996000000, 0.87],
      [40255200000, 0.88],
      [40514400000, 0.79],
      [40773600000, 0.54],
      [41032800000, 0.34],
      [41378400000, 0]
    ]

    options.series = [winter20142015, winter20152016, winter20162017]

    let responsive = HIResponsive()
    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "plotOptions": [
        "series": [
          "marker": [
            "radius": 2.5
          ]
        ]
      ]
    ]
    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

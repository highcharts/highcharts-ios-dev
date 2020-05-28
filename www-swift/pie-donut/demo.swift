import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    
    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pie"
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market share, January, 2018"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://statcounter.com\" target=\"_blank\">statcounter.com</a>"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    plotOptions.pie.shadow = HIShadowOptionsObject()
    plotOptions.pie.shadow.width = 0
    plotOptions.pie.center = ["50%", "50%"]
    options.plotOptions = plotOptions

    let tooltip = HITooltip()
    tooltip.valueSuffix = "%"
    options.tooltip = tooltip

    let browsers = HIPie()
    browsers.name = "Browsers"
    browsers.size = "60%"

    let dataLabelsBrowsers = HIDataLabels()
    dataLabelsBrowsers.formatter = HIFunction(jsFunction: "function () { return this.y > 5 ? this.point.name : null; }")
    dataLabelsBrowsers.color = HIColor(hexValue: "ffffff")
    dataLabelsBrowsers.distance = -30
    browsers.dataLabels = [dataLabelsBrowsers]

    browsers.data = [[
        "name": "MSIE",
        "y": 56.33,
        "color": "#7cb5ec"
    ], [
        "name": "Firefox",
        "y": 10.38,
        "color": "#434348"
    ], [
        "name": "Chrome",
        "y": 24.03,
        "color": "#90ed7d"
    ], [
        "name": "Safari",
        "y": 4.77,
        "color": "#f7a35c"
    ], [
        "name": "Opera",
        "y": 0.91,
        "color": "#8085e9"
    ], [
        "y": 0.2,
        "color": "#f15c80"
    ]]

    let versions = HIPie()
    versions.name = "Versions"
    versions.size = "80%"
    versions.innerSize = "60%"

    let dataLabelsVersions = HIDataLabels()
    dataLabelsVersions.formatter = HIFunction(jsFunction: "function () { return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%' : null; }")
    versions.dataLabels = [dataLabelsVersions]
    versions.id = "versions"

    versions.data = [[
        "name": "MSIE 6.0",
        "y": 1.06,
        "color": "rgb(175,232,255)"
    ], [
        "name": "MSIE 7.0",
        "y": 0.5,
        "color": "rgb(166,223,255)"
    ], [
        "name": "MSIE 8.0",
        "y": 17.2,
        "color": "rgb(158,215,255)"
    ], [
        "name": "MSIE 9.0",
        "y": 8.11,
        "color": "rgb(149,206,255)"
    ], [
        "name": "MSIE 10.0",
        "y": 5.33,
        "color": "rgb(141,198,253)"
    ], [
        "name": "MSIE 11.0",
        "y": 24.13,
        "color": "rgb(132,189,244)"
    ], [
        "name": "Firefox v31",
        "y": 0.33,
        "color": "rgb(118,118,123)"
    ], [
        "name": "Firefox v32",
        "y": 0.15,
        "color": "rgb(111,111,116)"
    ], [
        "name": "Firefox v33",
        "y": 0.22,
        "color": "rgb(105,105,110)"
    ], [
        "name": "Firefox v35",
        "y": 1.27,
        "color": "rgb(98,98,103)"
    ],
    [
        "name": "Firefox v36",
        "y": 2.76,
        "color": "rgb(92,92,97)"
    ],
    [
        "name": "Firefox v37",
        "y": 2.32,
        "color": "rgb(86,86,91)"
    ],
    [
        "name": "Firefox v38",
        "y": 2.31,
        "color": "rgb(79,79,84)"
    ],
    [
        "y": 1.02,
        "color": "rgb(73,73,78)"
    ],
    [
        "name": "Chrome v30.0",
        "y": 0.14,
        "color": "rgb(195,255,176)"
    ],
    [
        "name": "Chrome v31.0",
        "y": 1.24,
        "color": "rgb(191,255,172)"
    ],
    [
        "name": "Chrome v32.0",
        "y": 0.55,
        "color": "rgb(187,255,168)"
    ],
    [
        "name": "Chrome v33.0",
        "y": 0.19,
        "color": "rgb(184,255,165)"
    ],
    [
        "name": "Chrome v34.0",
        "y": 0.14,
        "color": "rgb(180,255,161)"
    ],
    [
        "name": "Chrome v35.0",
        "y": 0.85,
        "color": "rgb(176,255,157)"
    ],
    [
        "name": "Chrome v36.0",
        "y": 2.53,
        "color": "rgb(173,255,154)"
    ],
    [
        "name": "Chrome v37.0",
        "y": 0.38,
        "color": "rgb(169,255,150)"
    ],
    [
        "name": "Chrome v38.0",
        "y": 0.6,
        "color": "rgb(165,255,146)"
    ],
    [
        "name": "Chrome v39.0",
        "y": 2.96,
        "color": "rgb(162,255,143)"
    ],
    [
        "name": "Chrome v40.0",
        "y": 5,
        "color": "rgb(158,251,139)"
    ],
    [
        "name": "Chrome v41.0",
        "y": 4.32,
        "color": "rgb(154,247,135)"
    ],
    [
        "name": "Chrome v42.0",
        "y": 3.68,
        "color": "rgb(151,244,132)"
    ],
    [
        "name": "Chrome v43.0",
        "y": 1.45,
        "color": "rgb(147,240,128)"
    ],
    [
        "name": "Safari v5.0",
        "y": 0.3,
        "color": "rgb(255,214,143)"
    ],
    [
        "name": "Safari v5.1",
        "y": 0.42,
        "color": "rgb(255,206,135)"
    ],
    [
        "name": "Safari v6.1",
        "y": 0.29,
        "color": "rgb(255,199,128)"
    ],
    [
        "name": "Safari v6.2",
        "y": 0.17,
        "color": "rgb(255,192,121)"
    ],
    [
        "name": "Safari v7.0",
        "y": 0.26,
        "color": "rgb(255,184,113)"
    ],
    [
        "name": "Safari v7.1",
        "y": 0.77,
        "color": "rgb(255,177,106)"
    ],
    [
        "name": "Safari v8.0",
        "y": 2.56,
        "color": "rgb(254,170,99)"
    ],
    [
        "name": "Opera v12.x",
        "y": 0.34,
        "color": "rgb(179,184,255)"
    ],
    [
        "name": "Opera v27",
        "y": 0.17,
        "color": "rgb(166,171,255)"
    ],
    [
        "name": "Opera v28",
        "y": 0.24,
        "color": "rgb(153,158,255)"
    ],
    [
        "name": "Opera v29",
        "y": 0.16,
        "color": "rgb(140,145,245)"
    ]]

    options.series = [browsers, versions]

    let responsive = HIResponsive()
    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 400
    rule.chartOptions = [
      "series": [
        "id": "versions",
        "dataLabels": [
          "enabled": false
        ]
      ]
    ]
    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

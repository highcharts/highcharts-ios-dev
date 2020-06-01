import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "sand-signika"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "pie"
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market shares. January, 2018"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://statcounter.com\" target=\"_blank\">statcounter.com</a>"
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.announceNewData = HIAnnounceNewData()
    accessibility.announceNewData.enabled = true
    accessibility.point = HIPoint()
    accessibility.point.valueSuffix = "%"
    options.accessibility = accessibility

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.name}: {point.y:.1f}%"
    plotOptions.pie.dataLabels = [dataLabels]

    options.plotOptions = plotOptions

    let tooltip = HITooltip()
    tooltip.headerFormat = "<span style=\"font-size:11px\">{series.name}</span><br>"
    tooltip.pointFormat = "<span style=\"color:{point.color}\">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>"
    options.tooltip = tooltip

    let browsers = HIPie()
    browsers.name = "Browsers"
    // browsers.colorByPoint = true

    let chromeData = HIData()
    chromeData.name = "Chrome"
    chromeData.y = 62.74
    chromeData.drilldown = "Chrome"

    let firefoxData = HIData()
    firefoxData.name = "Firefox"
    firefoxData.y = 10.57
    firefoxData.drilldown = "Firefox"

    let internetExplorerData = HIData()
    internetExplorerData.name = "Internet Explorer"
    internetExplorerData.y = 7.23
    internetExplorerData.drilldown = "Internet Explorer"

    let safariData = HIData()
    safariData.name = "Safari"
    safariData.y = 5.58
    safariData.drilldown = "Safari"

    let edgeData = HIData()
    edgeData.name = "Edge"
    edgeData.y = 4.02
    edgeData.drilldown = "Edge"

    let operaData = HIData()
    operaData.name = "Opera"
    operaData.y = 1.92
    operaData.drilldown = "Opera"

    let otherData = HIData()
    otherData.name = "Other"
    otherData.y = 62.74

    browsers.data = [chromeData, firefoxData, internetExplorerData, safariData, edgeData, operaData, otherData]

    options.series = [browsers]

    let drilldown = HIDrilldown()

    let chromeDrilldown = HIPie()
    chromeDrilldown.name = "Chrome"
    chromeDrilldown.id = "Chrome"
    chromeDrilldown.data = [
      [
          "v65.0",
          0.1
      ],
      [
          "v64.0",
          1.3
      ],
      [
          "v63.0",
          53.02
      ],
      [
          "v62.0",
          1.4
      ],
      [
          "v61.0",
          0.88
      ],
      [
          "v60.0",
          0.56
      ],
      [
          "v59.0",
          0.45
      ],
      [
          "v58.0",
          0.49
      ],
      [
          "v57.0",
          0.32
      ],
      [
          "v56.0",
          0.29
      ],
      [
          "v55.0",
          0.79
      ],
      [
           "v54.0",
           0.18
       ],
       [
           "v51.0",
           0.13
       ],
       [
           "v49.0",
           2.16
       ],
       [
           "v48.0",
           0.13
       ],
       [
           "v47.0",
           0.11
       ],
       [
           "v43.0",
           0.17
       ],
       [
           "v29.0",
           0.26
       ]
    ]

    let firefoxDrilldown = HIPie()
    firefoxDrilldown.name = "Firefox"
    firefoxDrilldown.id = "Firefox"
    firefoxDrilldown.data = [
        [
            "v58.0",
            1.02
        ],
        [
            "v57.0",
            7.36
        ],
        [
            "v56.0",
            0.35
        ],
        [
            "v55.0",
            0.11
        ],
        [
            "v54.0",
            0.1
        ],
        [
            "v52.0",
            0.95
        ],
        [
            "v51.0",
            0.15
        ],
        [
            "v50.0",
            0.1
        ],
        [
            "v48.0",
            0.31
        ],
        [
            "v47.0",
            0.12
        ]
      ]

    let internetExplorerDrilldown = HIPie()
    internetExplorerDrilldown.name = "Internet Explorer"
    internetExplorerDrilldown.id = "Internet Explorer"
    internetExplorerDrilldown.data = [
        [
            "v11.0",
            6.2
        ],
        [
            "v10.0",
            0.29
        ],
        [
            "v9.0",
            0.27
        ],
        [
            "v8.0",
            0.47
        ]
      ]

    let safariDrilldown = HIPie()
    safariDrilldown.name = "Safari"
    safariDrilldown.id = "Safari"
    safariDrilldown.data =  [
           [
               "v11.0",
               3.39
           ],
           [
               "v10.1",
               0.96
           ],
           [
               "v10.0",
               0.36
           ],
           [
               "v9.1",
               0.54
           ],
           [
               "v9.0",
               0.13
           ],
           [
               "v5.1",
               0.2
           ]
       ]

    let edgeDrilldown = HIPie()
    edgeDrilldown.name = "Edge"
    edgeDrilldown.id = "Edge"
    edgeDrilldown.data = [
        [
            "v16",
            2.6
        ],
        [
            "v15",
            0.92
        ],
        [
            "v14",
            0.4
        ],
        [
            "v13",
            0.1
        ]
    ]

    let operaDrilldown = HIPie()
    operaDrilldown.name = "Opera"
    operaDrilldown.id = "Opera"
    operaDrilldown.data = [
        [
            "v50.0",
            0.96
        ],
        [
            "v49.0",
            0.82
        ],
        [
            "v12.1",
            0.14
        ]
    ]

    drilldown.series = [chromeDrilldown, firefoxDrilldown, internetExplorerDrilldown, safariDrilldown, edgeDrilldown, operaDrilldown]
    options.drilldown = drilldown

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Browser market shares. January, 2018"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Click the columns to view versions. Source: <a href=\"http://statcounter.com\" target=\"_blank\">statcounter.com</a>"
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.announceNewData = HIAnnounceNewData()
    accessibility.announceNewData.enabled = true
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.type = "category"
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Total percent market share"
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.borderWidth = 0
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.y:.1f}%"
    // plotOptions.column.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let tooltip = HITooltip()
    tooltip.headerFormat = "<span style=\"font-size:11px\">{series.name}</span><br>"
    tooltip.pointFormat = "<span style=\"color:{point.color}\">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>"
    options.tooltip = tooltip

    let browsers = HIColumn()
    browsers.name = "Browsers"
    browsers.colorByPoint = true

    let chrome = HIData()
    chrome.name = "Chrome"
    chrome.y = 62.74
    chrome.drilldown = "Chrome"

    let firefox = HIData()
    firefox.name = "Firefox"
    firefox.y = 10.57
    firefox.drilldown = "Firefox"

    let internetExplorer = HIData()
    internetExplorer.name = "Internet Explorer"
    internetExplorer.y = 7.23
    internetExplorer.drilldown = "Internet Explorer"

    let safari = HIData()
    safari.name = "Safari"
    safari.y = 5.58
    safari.drilldown = "Safari"

    let edge = HIData()
    edge.name = "Edge"
    edge.y = 4.02
    edge.drilldown = "Edge"

    let opera = HIData()
    opera.name = "Opera"
    opera.y = 1.92
    opera.drilldown = "Opera"

    let other = HIData()
    other.name = "Other"
    other.y = 7.62

    browsers.data = [chrome, firefox, internetExplorer, safari, edge, opera, other]

    options.series = [browsers]

    let drilldown = HIDrilldown()

    let chromeDrilldown = HIColumn()
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
    ] as [Any]

    let firefoxDrilldown = HIColumn()
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
    ] as [Any]

    let internetExplorerDrilldown = HIColumn()
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
    ] as [Any]

    let safariDrilldown = HIColumn()
    safariDrilldown.name = "Safari"
    safariDrilldown.id = "Safari"
    safariDrilldown.data = [
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
    ] as [Any]

    let edgeDrilldown = HIColumn()
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
    ] as [Any]

    let operaDrilldown = HIColumn()
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
    ] as [Any]


    drilldown.series = [chromeDrilldown, firefoxDrilldown, internetExplorerDrilldown, safariDrilldown, edgeDrilldown, operaDrilldown]

    options.drilldown = drilldown

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

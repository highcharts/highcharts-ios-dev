import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "spline"
    options.chart = chart

    let legend = HILegend()
    legend.symbolWidth = 40
    options.legend = legend

    let title = HITitle()
    title.text = "Most common desktop screen readers"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: WebAIM. Click on points to visit official screen reader website"
    options.subtitle = subtitle

    let yAxis = HIYAxis()
    yAxis.title = HITitle()
    yAxis.title.text = "Percentage usage"
    options.yAxis = [yAxis]

    let xAxis = HIXAxis()
    xAxis.title = HITitle()
    xAxis.title.text = "Time"
    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.definition = "Time from December 2010 to September 2019"
    xAxis.categories = ["December 2010", "May 2012", "January 2014", "July 2015", "October 2017", "September 2019"]
    options.xAxis = [xAxis]

    let tooltip = HITooltip()
    tooltip.valueSuffix = "%"
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.point = HIPoint()
    plotOptions.series.point.events = HIEvents()
    plotOptions.series.point.events.click = HIFunction(jsFunction: "function () { window.location.href = this.series.options.website; }")
    plotOptions.series.cursor = "pointer"
    options.plotOptions = plotOptions

    let nvda = HISpline()
    nvda.name = "NVDA"
    nvda.data = [34.8, 43.0, 51.2, 41.4, 64.9, 72.4]
    // nvda.website = "https://www.nvaccess.org"
    nvda.color = HIColor(hexValue: "8bbc21")
    nvda.accessibility = HIAccessibility()
    nvda.accessibility.definition = "This is the most used screen reader in 2019"

    let jaws = HISpline()
    jaws.name = "JAWS"
    jaws.data = [69.6, 63.7, 63.9, 43.7, 66.0, 61.7]
    // jaws.website = "https://www.freedomscientific.com/Products/Blindness/JAWS"
    jaws.color = HIColor(hexValue: "2f7ed8")
    jaws.dashStyle = "ShortDashDot"

    let voiceOver = HISpline()
    voiceOver.name = "VoiceOver"
    voiceOver.data = [20.2, 30.7, 36.8, 30.9, 39.6, 47.1]
    // voiceOver.website = "http://www.apple.com/accessibility/osx/voiceover"
    voiceOver.color = HIColor(hexValue: "0d233a")
    voiceOver.dashStyle = "ShortDot"

    let narrator = HISpline()
    narrator.name = "Narrator"
    narrator.data = [NSNull(), NSNull(), NSNull(), NSNull(), 21.4, 30.3]
    // narrator.website = "https://support.microsoft.com/en-us/help/22798/windows-10-complete-guide-to-narratorS"
    narrator.color = HIColor(hexValue: "a6c96a")
    narrator.dashStyle = "Dash"

    let zoomText = HISpline()
    zoomText.name = "ZoomText/Fusion"
    zoomText.data = [6.1, 6.8, 5.3, 27.5, 6.0, 5.5]
    // zoomText.website = "http://www.zoomtext.com/products/zoomtext-magnifierreader"
    zoomText.color = HIColor(hexValue: "492970")
    zoomText.dashStyle = "ShortDot"

    let other = HISpline()
    other.name = "Other"
    other.data = [42.6, 51.5, 54.2, 45.8, 20.2, 15.4]
    // other.website = "http://www.disabled-world.com/assistivedevices/computer/screen-readers.php"
    other.color = HIColor(hexValue: "910000")
    other.dashStyle = "ShortDash"

    options.series = [nvda, jaws, voiceOver, narrator, zoomText, other]

    let responsive = HIResponsive()

    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 550
    rule.chartOptions = [
      "legend": [
        "itemWidth": 150
      ],
      "yAxis": [
        "title": [
          "enabled": true
        ],
        "labels": [
          "format": "{value}%"
        ]
      ],
      "xAxis": [
        "categories": ["Dec. 2010", "May 2012", "Jan. 2014", "July 2015", "Oct. 2017", "Sep. 2019"]
      ]
    ]

    responsive.rules = [rule]
    options.responsive = responsive

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

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
    title.text = "Primary desktop/laptop screen readers"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: WebAIM. Click on point to visit official website"
    options.subtitle = subtitle

    let tooltip = HITooltip()
    tooltip.valueSuffix = "%"
    tooltip.borderColor = HIColor(name: "#8ae")
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.connectorColor = HIColor(name: "#777")
    dataLabels.format = "<b>{point.name}</b>: {point.percentage:.1f} %"
    plotOptions.pie.dataLabels = [dataLabels]
    plotOptions.pie.point = HIPoint()
    plotOptions.pie.point.events = HIEvents()
    plotOptions.pie.point.events.click = HIFunction(jsFunction: "function () { window.location.href = this.series.options.website; }")
    plotOptions.pie.cursor = "pointer"
    plotOptions.pie.borderWidth = 3
    options.plotOptions = plotOptions

    let pie = HIPie()
    pie.name = "Screen reader usage"

    let nvda = HIData()
    nvda.name = "NVDA"
    nvda.y = 40.6
    nvda.color = HIColor(hexValue: "8bbc21")
    // nvda.website = "https://www.nvaccess.org"
    nvda.accessibility = HIAccessibility()
    nvda.accessibility.definition = "This is the most used desktop screen reader"

    let jaws = HIData()
    jaws.name = "JAWS"
    jaws.y = 40.6
    // jaws.website = "https://www.freedomscientific.com/Products/Blindness/JAWS"
    jaws.color = HIColor(hexValue: "2f7ed8")

    let voiceOver = HIData()
    voiceOver.name = "VoiceOver"
    voiceOver.y = 12.9
    // voiceOver.website = "http://www.apple.com/accessibility/osx/voiceover"
    voiceOver.color = HIColor(hexValue: "0d233a")

    let zoomText = HIData()
    zoomText.name = "ZoomText"
    zoomText.y = 2
    // zoomText.website = "http://www.zoomtext.com/products/zoomtext-magnifierreader"
    zoomText.color = HIColor(hexValue: "492970")

    let other = HIData()
    other.name = "Other"
    other.y = 4.4
    // other.website = "http://www.disabled-world.com/assistivedevices/computer/screen-readers.php"
    other.color = HIColor(hexValue: "910000")

    pie.data = [nvda, jaws, voiceOver, zoomText, other]

    options.series = [pie]

    let responsive = HIResponsive()

    let rule = HIRules()
    rule.condition = HICondition()
    rule.condition.maxWidth = 500
    rule.chartOptions = [
      "plotOptions": [
        "series": [
          "dataLabels": [
            "format": "<b>{point.name}</b>"
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

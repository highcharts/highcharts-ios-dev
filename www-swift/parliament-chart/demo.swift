import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["item-series"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Highcharts item chart"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Parliament visualization"
    options.subtitle = subtitle

    let legend = HILegend()
    legend.labelFormat = "{name} <span style=\"opacity: 0.4\">{y}</span>"
    options.legend = legend

    let representatives = HIItem()
    representatives.name = "Representatives"
    representatives.keys = ["name", "y", "color", "label"]
    representatives.data = [
      ["The Left", 69, "#BE3075", "DIE LINKE"],
      ["Social Democratic Party", 153, "#EB001F", "SPD"],
      ["Alliance 90/The Greens", 67, "#64A12D", "GRÜNE"],
      ["Free Democratic Party", 80, "#FFED00", "FDP"],
      ["Christian Democratic Union", 200, "#000000", "CDU"],
      ["Christian Social Union in Bavaria", 46, "#008AC5", "CSU"],
      ["Alternative for Germany", 94, "#009EE0", "AfD"]
    ]
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.label}"
    representatives.dataLabels = [dataLabels]

    representatives.center = ["50%", "88%"]
    representatives.size = "170%"
    representatives.startAngle = -100
    representatives.endAngle = 100

    options.series = [representatives]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

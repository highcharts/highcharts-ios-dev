import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    // chart.styledMode = true
    options.chart = chart

    let title = HITitle()
    title.text = "Pie point CSS"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    options.xAxis = [xAxis]

    let pie = HIPie()
    pie.allowPointSelect = true
    pie.keys = ["name", "y", "selected", "sliced"]
    pie.showInLegend = true
    pie.data = [
        ["Apples", 29.9, false],
        ["Pears", 71.5, false],
        ["Oranges", 106.4, false],
        ["Plums", 129.2, false],
        ["Bananas", 144.0, false],
        ["Peaches", 176.0, false],
        ["Prunes", 135.6, true, true],
        ["Avocados", 148.5, false]
    ]

    options.series = [pie]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

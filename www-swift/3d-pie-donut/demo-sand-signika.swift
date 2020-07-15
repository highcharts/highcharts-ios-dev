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
    chart.options3d = HIOptions3d()
    chart.options3d.enabled = true
    chart.options3d.alpha = 45
    options.chart = chart

    let title = HITitle()
    title.text = "Contents of Highsoft\'s weekly fruit delivery"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "3D donut in Highcharts'"
    options.subtitle = subtitle

    let plotOptions = HIPlotOptions()
    plotOptions.pie = HIPie()
    plotOptions.pie.innerSize = 100
    plotOptions.pie.depth = 45
    options.plotOptions = plotOptions

    let deliveredAmount = HIPie()
    deliveredAmount.name = "Delivered amount"
    deliveredAmount.data = [
        ["Bananas", 8],
        ["Kiwi", 3],
        ["Mixed nuts", 1],
        ["Oranges", 6],
        ["Apples", 8],
        ["Pears", 4],
        ["Clementines", 4],
        ["Reddish (bag)", 1],
        ["Grapes (bunch)", 1]
    ]

    options.series = [deliveredAmount]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

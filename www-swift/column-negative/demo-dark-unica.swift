import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Column chart with negative values"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
    options.xAxis = [xAxis]

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let john = HIColumn()
    john.name = "John"
    john.data = [5, 3, 4, 7, 2]

    let jane = HIColumn()
    jane.name = "Jane"
    jane.data = [2, -2, -3, 2, 1]

    let joe = HIColumn()
    joe.name = "Joe"
    joe.data = [3, 4, 4, -2, 5]

    options.series = [john, jane, joe]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

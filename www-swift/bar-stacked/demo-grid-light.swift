import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "bar"
    options.chart = chart

    let title = HITitle()
    title.text = "Stacked bar chart"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.min = 0
    yAxis.title = HITitle()
    yAxis.title.text = "Total fruit consumption"
    options.yAxis = [yAxis]

    let legend = HILegend()
    legend.reversed = true
    options.legend = legend

    let plotOptions = HIPlotOptions()
    plotOptions.series = HISeries()
    plotOptions.series.stacking = "normal"
    options.plotOptions = plotOptions

    let credits = HICredits()
    credits.enabled = false
    options.credits = credits

    let john = HIBar()
    john.name = "John"
    john.data = [5, 3, 4, 7, 2]

    let jane = HIBar()
    jane.name = "Jane"
    jane.data = [2, 2, 3, 2, 1]

    let joe = HIBar()
    joe.name = "Joe"
    joe.data = [3, 4, 4, 2, 5]

    options.series = [john, jane, joe]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

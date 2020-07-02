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
    // chart.styledMode = true
    options.chart = chart

    let title = HITitle()
    title.text = "Styling axes and columns"
    options.title = title

    let primaryYAxis = HIYAxis()
    primaryYAxis.className = "highcharts-color-0"
    primaryYAxis.title = HITitle()
    primaryYAxis.title.text = "Primary axis"

    let secondaryYAxis = HIYAxis()
    secondaryYAxis.className = "highcharts-color-1"
    secondaryYAxis.opposite = true
    secondaryYAxis.title = HITitle()
    secondaryYAxis.title.text = "Secondary axis"

    options.yAxis = [primaryYAxis, secondaryYAxis]

    let plotOptions = HIPlotOptions()
    plotOptions.column = HIColumn()
    plotOptions.column.borderRadius = 5
    options.plotOptions = plotOptions

    let column1 = HIColumn()
    column1.data = [1, 3, 2, 4]

    let column2 = HIColumn()
    column2.data = [324, 124, 547, 221]
    column2.yAxis = 1

    options.series = [column1, column2]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

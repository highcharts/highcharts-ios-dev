import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"

    let chart = HIChart()
    chart.type = "column"
    options.chart = chart

    let title = HITitle()
    title.text = "Data extracted from a HTML table in the page"
    options.title = title

    let yAxis = HIYAxis()
    yAxis.allowDecimals = false
    yAxis.title = HITitle()
    yAxis.title.text = "Units"
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.formatter = HIFunction(jsFunction: "function () { return '<b>' + this.series.name + '</b><br/>' + this.point.y + ' ' + this.point.name.toLowerCase(); }")
    options.tooltip = tooltip

    let data = HIData()
    data.table = "<thead> <tr> <th></th> <th>Jane</th> <th>John</th> </tr> </thead> <tbody> <tr> <th>Apples</th> <td>3</td> <td>4</td> </tr> <tr> <th>Pears</th> <td>2</td> <td>0</td> </tr> <tr> <th>Plums</th> <td>5</td> <td>11</td> </tr> <tr> <th>Bananas</th> <td>1</td> <td>1</td> </tr> <tr> <th>Oranges</th> <td>2</td> <td>4</td> </tr> </tbody>"

//    options.data = data

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Pears", "Plums", "Bananas", "Oranges"]
    options.xAxis = [xAxis]

    let jane = HIColumn()
    jane.name = "Jane"
    jane.data = [3, 2, 5, 1, 2]

    let john = HIColumn()
    john.name = "John"
    john.data = [4, 0, 11, 1, 4]

    options.series = [jane, john]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

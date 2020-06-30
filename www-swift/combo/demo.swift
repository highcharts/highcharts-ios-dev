import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    
    let options = HIOptions()

    let title = HITitle()
    title.text = "Combination chart"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.categories = ["Apples", "Oranges", "Pears", "Bananas", "Plums"]
    options.xAxis = [xAxis]

    let jane = HIColumn()
    jane.name = "Jane"
    jane.data = [3, 2, 1, 3, 4]

    let john = HIColumn()
    john.name = "John"
    john.data = [2, 3, 5, 7, 6]

    let joe = HIColumn()
    joe.name = "Joe"
    joe.data = [4, 3, 3, 9, 0]

    let average = HISpline()
    average.name = "Average"
    average.data = [3, 2.67, 3, 6.33, 3.33]
    average.marker = HIMarker()
    average.marker.lineWidth = 2
    average.marker.lineColor = "#f7a35c"
    average.marker.fillColor = HIColor(name: "white")

    let totalConsumption = HIPie()
    totalConsumption.name = "Total consumption"

    let janePieData = HIData()
    janePieData.name = "Jane"
    janePieData.y = 13
    janePieData.color = HIColor(hexValue: "7cb5ec")

    let johnPieData = HIData()
    johnPieData.name = "John"
    johnPieData.y = 23
    johnPieData.color = HIColor(hexValue: "434348")

    let joePieData = HIData()
    joePieData.name = "joe"
    joePieData.y = 19
    joePieData.color = HIColor(hexValue: "90ed7d")

    totalConsumption.data = [janePieData, johnPieData, joePieData]

    totalConsumption.center = [100, 80]
    totalConsumption.size = 100
    totalConsumption.showInLegend = false
    let dataLabels = HIDataLabels()
    dataLabels.enabled = false
    totalConsumption.dataLabels = [dataLabels]

    options.series = [jane, john, joe, average, totalConsumption]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

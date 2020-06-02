import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "grid-light"
    chartView.plugins = ["variable-pie"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "variablepie"
    options.chart = chart

    let title = HITitle()
    title.text = "Countries compared by population density and total area."
    options.title = title

    let tooltip = HITooltip()
    tooltip.headerFormat = ""
    tooltip.pointFormat = "<span style=\"color:{point.color}\">\u{25CF}</span> <b> {point.name}</b><br/>' + 'Area (square km): <b>{point.y}</b><br/>' + 'Population density (people per square km): <b>{point.z}</b><br/>"
    options.tooltip = tooltip

    let countries = HIVariablepie()
    countries.minPointSize = 10
    countries.innerSize = "20%"
    countries.zMin = 0
    countries.name = "countries"

    let spain = HIData()
    spain.name = "Spain"
    spain.y = 505370
    spain.z = 92.9

    let france = HIData()
    france.name = "France"
    france.y = 551500
    france.z = 118.7

    let poland = HIData()
    poland.name = "Poland"
    poland.y = 312685
    poland.z = 124.6

    let czechRepublic = HIData()
    czechRepublic.name = "Czech Republic"
    czechRepublic.y = 78867
    czechRepublic.z = 137.5

    let italy = HIData()
    italy.name = "Italy"
    italy.y = 301340
    italy.z = 201.8

    let switzerland = HIData()
    switzerland.name = "Switzerland"
    switzerland.y = 41277
    switzerland.z = 214.5

    let germany = HIData()
    germany.name = "Germany"
    germany.y = 357022
    germany.z = 235.6

    countries.data = [spain, france, poland, czechRepublic, italy, switzerland, germany]

    options.series = [countries]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

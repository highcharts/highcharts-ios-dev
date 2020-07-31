import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.plugins = ["heatmap", "tilemap"]

    let options = HIOptions()

    let chart = HIChart()
    chart.type = "tilemap"
    chart.inverted = true
    chart.height = "80%"
    options.chart = chart

    let accessibility = HIAccessibility()
    accessibility.definition = "A tile map represents the states of the USA by population in 2016. The hexagonal tiles are positioned to geographically echo the map of the USA. A color-coded legend states the population levels as below 1 million (beige), 1 to 5 million (orange), 5 to 20 million (pink) and above 20 million (hot pink). The chart is interactive, and the individual state data points are displayed upon hovering. Three states have a population of above 20 million: California (39.3 million), Texas (27.9 million) and Florida (20.6 million). The northern US region from Massachusetts in the Northwest to Illinois in the Midwest contains the highest concentration of states with a population of 5 to 20 million people. The southern US region from South Carolina in the Southeast to New Mexico in the Southwest contains the highest concentration of states with a population of 1 to 5 million people. 6 states have a population of less than 1 million people; these include Alaska, Delaware, Wyoming, North Dakota, South Dakota and Vermont. The state with the lowest population is Wyoming in the Northwest with 584,153 people."
    accessibility.screenReaderSection = HIScreenReaderSection()
    accessibility.screenReaderSection.beforeChartFormat = "<h5>{chartTitle}</h5><div>{chartSubtitle}</div><div>{chartLongdesc}</div><div>{viewTableButton}</div>"
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. {xDescription}, {point.value}."
    options.accessibility = accessibility

    let title = HITitle()
    title.text = "Source:<a href=\"https://simple.wikipedia.org/wiki/List_of_U.S._states_by_population\">Wikipedia</a>"
    options.title = title

    let xAxis = HIXAxis()
    xAxis.visible = false
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.visible = false
    options.yAxis = [yAxis]

    let colorAxis = HIColorAxis()

    let dataClasses1 = HIDataClasses()
    dataClasses1.from = 0
    dataClasses1.to = 1000000
    dataClasses1.color = HIColor(hexValue: "F9EDB3")
    dataClasses1.name = "< 1M"

    let dataClasses2 = HIDataClasses()
    dataClasses2.from = 1000000
    dataClasses2.to = 5000000
    dataClasses2.color = HIColor(hexValue: "FFC428")
    dataClasses2.name = "1M - 5M"

    let dataClasses3 = HIDataClasses()
    dataClasses3.from = 5000000
    dataClasses3.to = 20000000
    dataClasses3.color = HIColor(hexValue: "FF7987")
    dataClasses3.name = "5M - 20M"

    let dataClasses4 = HIDataClasses()
    dataClasses4.from = 20000000
    dataClasses4.color = HIColor(hexValue: "FF2371")
    dataClasses4.name = "> 20M"

    colorAxis.dataClasses = [dataClasses1, dataClasses2, dataClasses3, dataClasses4]
    options.colorAxis = [colorAxis]

    let tooltip = HITooltip()
    tooltip.headerFormat = ""
    tooltip.pointFormat = "The population of <b> {point.name}</b> is <b>{point.value}</b>"
    options.tooltip = tooltip

    let tilemap = HITilemap()
    tilemap.name = ""

    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.hc-a2}"
    dataLabels.color = HIColor(hexValue: "000000")
    dataLabels.style = HIStyle()
    dataLabels.style.textOutline = "false"

    tilemap.dataLabels = [dataLabels]

    tilemap.data = data()

    options.series = [tilemap]

    chartView.options = options

    self.view.addSubview(chartView)
  }

  private func data() -> [Any] {
    return [
    [
        "hc-a2": "AL",
        "name": "Alabama",
        "region": "South",
        "x": 6,
        "y": 7,
        "value": 4849377
        ], [
        "hc-a2": "AK",
        "name": "Alaska",
        "region": "West",
        "x": 0,
        "y": 0,
        "value": 737732
        ], [
        "hc-a2": "AZ",
        "name": "Arizona",
        "region": "West",
        "x": 5,
        "y": 3,
        "value": 6745408
        ], [
        "hc-a2": "AR",
        "name": "Arkansas",
        "region": "South",
        "x": 5,
        "y": 6,
        "value": 2994079
        ], [
        "hc-a2": "CA",
        "name": "California",
        "region": "West",
        "x": 5,
        "y": 2,
        "value": 39250017
        ], [
        "hc-a2": "CO",
        "name": "Colorado",
        "region": "West",
        "x": 4,
        "y": 3,
        "value": 5540545
        ], [
        "hc-a2": "CT",
        "name": "Connecticut",
        "region": "Northeast",
        "x": 3,
        "y": 11,
        "value": 3596677
        ], [
        "hc-a2": "DE",
        "name": "Delaware",
        "region": "South",
        "x": 4,
        "y": 9,
        "value": 935614
        ], [
        "hc-a2": "DC",
        "name": "District of Columbia",
        "region": "South",
        "x": 4,
        "y": 10,
        "value": 7288000
        ], [
        "hc-a2": "FL",
        "name": "Florida",
        "region": "South",
        "x": 8,
        "y": 8,
        "value": 20612439
        ], [
        "hc-a2": "GA",
        "name": "Georgia",
        "region": "South",
        "x": 7,
        "y": 8,
        "value": 10310371
        ], [
        "hc-a2": "HI",
        "name": "Hawaii",
        "region": "West",
        "x": 8,
        "y": 0,
        "value": 1419561
        ], [
        "hc-a2": "ID",
        "name": "Idaho",
        "region": "West",
        "x": 3,
        "y": 2,
        "value": 1634464
        ], [
        "hc-a2": "IL",
        "name": "Illinois",
        "region": "Midwest",
        "x": 3,
        "y": 6,
        "value": 12801539
        ], [
        "hc-a2": "IN",
        "name": "Indiana",
        "region": "Midwest",
        "x": 3,
        "y": 7,
        "value": 6596855
        ], [
        "hc-a2": "IA",
        "name": "Iowa",
        "region": "Midwest",
        "x": 3,
        "y": 5,
        "value": 3107126
        ], [
        "hc-a2": "KS",
        "name": "Kansas",
        "region": "Midwest",
        "x": 5,
        "y": 5,
        "value": 2904021
        ], [
        "hc-a2": "KY",
        "name": "Kentucky",
        "region": "South",
        "x": 4,
        "y": 6,
        "value": 4413457
        ], [
        "hc-a2": "LA",
        "name": "Louisiana",
        "region": "South",
        "x": 6,
        "y": 5,
        "value": 4649676
        ], [
        "hc-a2": "ME",
        "name": "Maine",
        "region": "Northeast",
        "x": 0,
        "y": 11,
        "value": 1330089
        ], [
        "hc-a2": "MD",
        "name": "Maryland",
        "region": "South",
        "x": 4,
        "y": 8,
        "value": 6016447
        ], [
        "hc-a2": "MA",
        "name": "Massachusetts",
        "region": "Northeast",
        "x": 2,
        "y": 10,
        "value": 6811779
        ], [
        "hc-a2": "MI",
        "name": "Michigan",
        "region": "Midwest",
        "x": 2,
        "y": 7,
        "value": 9928301
        ], [
        "hc-a2": "MN",
        "name": "Minnesota",
        "region": "Midwest",
        "x": 2,
        "y": 4,
        "value": 5519952
        ], [
        "hc-a2": "MS",
        "name": "Mississippi",
        "region": "South",
        "x": 6,
        "y": 6,
        "value": 2984926
        ], [
        "hc-a2": "MO",
        "name": "Missouri",
        "region": "Midwest",
        "x": 4,
        "y": 5,
        "value": 6093000
        ], [
        "hc-a2": "MT",
        "name": "Montana",
        "region": "West",
        "x": 2,
        "y": 2,
        "value": 1023579
        ], [
        "hc-a2": "NE",
        "name": "Nebraska",
        "region": "Midwest",
        "x": 4,
        "y": 4,
        "value": 1881503
        ], [
        "hc-a2": "NV",
        "name": "Nevada",
        "region": "West",
        "x": 4,
        "y": 2,
        "value": 2839099
        ], [
        "hc-a2": "NH",
        "name": "New Hampshire",
        "region": "Northeast",
        "x": 1,
        "y": 11,
        "value": 1326813
        ], [
        "hc-a2": "NJ",
        "name": "New Jersey",
        "region": "Northeast",
        "x": 3,
        "y": 10,
        "value": 8944469
        ], [
        "hc-a2": "NM",
        "name": "New Mexico",
        "region": "West",
        "x": 6,
        "y": 3,
        "value": 2085572
        ], [
        "hc-a2": "NY",
        "name": "New York",
        "region": "Northeast",
        "x": 2,
        "y": 9,
        "value": 19745289
        ], [
        "hc-a2": "NC",
        "name": "North Carolina",
        "region": "South",
        "x": 5,
        "y": 9,
        "value": 10146788
        ], [
        "hc-a2": "ND",
        "name": "North Dakota",
        "region": "Midwest",
        "x": 2,
        "y": 3,
        "value": 739482
        ], [
        "hc-a2": "OH",
        "name": "Ohio",
        "region": "Midwest",
        "x": 3,
        "y": 8,
        "value": 11614373
        ], [
        "hc-a2": "OK",
        "name": "Oklahoma",
        "region": "South",
        "x": 6,
        "y": 4,
        "value": 3878051
        ], [
        "hc-a2": "OR",
        "name": "Oregon",
        "region": "West",
        "x": 4,
        "y": 1,
        "value": 3970239
        ], [
        "hc-a2": "PA",
        "name": "Pennsylvania",
        "region": "Northeast",
        "x": 3,
        "y": 9,
        "value": 12784227
        ], [
        "hc-a2": "RI",
        "name": "Rhode Island",
        "region": "Northeast",
        "x": 2,
        "y": 11,
        "value": 1055173
        ], [
        "hc-a2": "SC",
        "name": "South Carolina",
        "region": "South",
        "x": 6,
        "y": 8,
        "value": 4832482
        ], [
        "hc-a2": "SD",
        "name": "South Dakota",
        "region": "Midwest",
        "x": 3,
        "y": 4,
        "value": 853175
        ], [
        "hc-a2": "TN",
        "name": "Tennessee",
        "region": "South",
        "x": 5,
        "y": 7,
        "value": 6651194
        ], [
        "hc-a2": "TX",
        "name": "Texas",
        "region": "South",
        "x": 7,
        "y": 4,
        "value": 27862596
        ], [
        "hc-a2": "UT",
        "name": "Utah",
        "region": "West",
        "x": 5,
        "y": 4,
        "value": 2942902
        ], [
        "hc-a2": "VT",
        "name": "Vermont",
        "region": "Northeast",
        "x": 1,
        "y": 10,
        "value": 626011
        ], [
        "hc-a2": "VA",
        "name": "Virginia",
        "region": "South",
        "x": 5,
        "y": 8,
        "value": 8411808
        ], [
        "hc-a2": "WA",
        "name": "Washington",
        "region": "West",
        "x": 2,
        "y": 1,
        "value": 7288000
        ], [
        "hc-a2": "WV",
        "name": "West Virginia",
        "region": "South",
        "x": 4,
        "y": 7,
        "value": 1850326
        ], [
        "hc-a2": "WI",
        "name": "Wisconsin",
        "region": "Midwest",
        "x": 2,
        "y": 5,
        "value": 5778708
        ], [
        "hc-a2": "WY",
        "name": "Wyoming",
        "region": "West",
        "x": 3,
        "y": 3,
        "value": 584153
        ]
    ]
  }

}

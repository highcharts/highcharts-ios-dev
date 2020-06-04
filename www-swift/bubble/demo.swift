import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    
    let options = HIOptions()

    let chart = HIChart()
    chart.type = "bubble"
    chart.plotBorderWidth = 1
    chart.zoomType = "xy"
    options.chart = chart

    let legend = HILegend()
    legend.enabled = false
    options.legend = legend

    let title = HITitle()
    title.text = "Sugar and fat intake per country"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Source: <a href=\"http://www.euromonitor.com/\">Euromonitor</a> and <a href=\"https://data.oecd.org/\">OECD</a>"
    options.subtitle = subtitle

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. {point.name}, fat: {point.x}g, sugar: {point.y}g, obesity: {point.z}%."
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.gridLineWidth = 1
    xAxis.title = HITitle()
    xAxis.title.text = "Daily fat intake"
    xAxis.labels = HILabels()
    xAxis.labels.format = "{value} gr"

    let xAxisplotLine = HIPlotLines()
    xAxisplotLine.color = HIColor(name: "black")
    xAxisplotLine.dashStyle = "dot"
    xAxisplotLine.width = 2
    xAxisplotLine.value = 65
    xAxisplotLine.label = HILabel()
    xAxisplotLine.label.rotation = 0
    xAxisplotLine.label.y = 15
    xAxisplotLine.label.style = HICSSObject()
    xAxisplotLine.label.style.fontWeight = "italic"
    xAxisplotLine.label.text = "Safe fat intake 65g/day"
    xAxisplotLine.zIndex = 3
    xAxis.plotLines = [xAxisplotLine]

    xAxis.accessibility = HIAccessibility()
    xAxis.accessibility.rangeDescription = "Range: 60 to 100 grams."
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.startOnTick = false
    yAxis.endOnTick = false
    yAxis.title = HITitle()
    yAxis.title.text = "Daily sugar intake"
    yAxis.labels = HILabels()
    yAxis.labels.format = "{value} gr"
    yAxis.maxPadding = 0.2

    let yAxisPlotLine = HIPlotLines()
    yAxisPlotLine.color = HIColor(name: "black")
    yAxisPlotLine.dashStyle = "dot"
    yAxisPlotLine.width = 2
    yAxisPlotLine.value = 50
    yAxisPlotLine.label = HILabel()
    yAxisPlotLine.label.align = "right"
    yAxisPlotLine.label.style = HICSSObject()
    yAxisPlotLine.label.style.fontWeight = "italic"
    yAxisPlotLine.label.text = "Safe sugar intake 50g/day"
    yAxisPlotLine.label.x = -10
    yAxisPlotLine.zIndex = 3
    yAxis.plotLines = [yAxisPlotLine]

    yAxis.accessibility = HIAccessibility()
    yAxis.accessibility.rangeDescription = "Range: 0 to 160 grams."
    options.yAxis = [yAxis]

    let tooltip = HITooltip()
    tooltip.useHTML = true
    tooltip.headerFormat = "<table>"
    tooltip.pointFormat = "<tr><th colspan=\"2\"><h3>{point.country}</h3></th></tr><tr><th>Fat intake:</th><td>{point.x}g</td></tr><tr><th>Sugar intake:</th><td>{point.y}g</td></tr><tr><th>Obesity (adults):</th><td>{point.z}%</td></tr>"
    tooltip.footerFormat = "</table>"
    tooltip.followPointer = true
    options.tooltip = tooltip

    let plotOptions = HIPlotOptions()
    plotOptions.bubble = HIBubble()
    let dataLabels = HIDataLabels()
    dataLabels.enabled = true
    dataLabels.format = "{point.name}"
    plotOptions.bubble.dataLabels = [dataLabels]
    options.plotOptions = plotOptions

    let bubble = HIBubble()

    let be = HIData()
    be.x = 95
    be.y = 95
    be.z = 13.8
    be.name = "BE"
    be.custom = ["country": "Belgium"]

    let de = HIData()
    de.x = 86.5
    de.y = 102.9
    de.z = 14.7
    de.name = "DE"
    de.custom = ["country": "Germany"]

    let fi = HIData()
    fi.x = 80.8
    fi.y = 91.5
    fi.z = 15.8
    fi.name = "FI"
    fi.custom = ["country": "Finland"]

    let nl = HIData()
    nl.x = 80.4
    nl.y = 102.5
    nl.z = 12
    nl.name = "NL"
    nl.custom = ["country": "Netherlands"]

    let se = HIData()
    se.x = 80.3
    se.y = 86.1
    se.z = 11.8
    se.name = "SE"
    se.custom = ["country": "Sweden"]

    let es = HIData()
    es.x = 78.4
    es.y = 70.1
    es.z = 16.6
    es.name = "ES"
    es.custom = ["country": "Spain"]

    let fr = HIData()
    fr.x = 74.2
    fr.y = 68.5
    fr.z = 14.5
    fr.name = "FR"
    fr.custom = ["country": "France"]

    let no = HIData()
    no.x = 73.5
    no.y = 83.1
    no.z = 10
    no.name = "NO"
    no.custom = ["country": "Norway"]

    let uk = HIData()
    uk.x = 71
    uk.y = 93.2
    uk.z = 24.7
    uk.name = "UK"
    uk.custom = ["country": "United Kingdom"]

    let it = HIData()
    it.x = 69.2
    it.y = 57.6
    it.z = 10.4
    it.name = "IT"
    it.custom = ["country": "Italy"]

    let ru = HIData()
    ru.x = 68.6
    ru.y = 20
    ru.z = 16
    ru.name = "RU"
    ru.custom = ["country": "Russia"]

    let us = HIData()
    us.x = 65.5
    us.y = 126.4
    us.z = 35.3
    us.name = "US"
    us.custom = ["country": "United States"]

    let hu = HIData()
    hu.x = 65.4
    hu.y = 50.8
    hu.z = 28.5
    hu.name = "HU"
    hu.custom = ["country": "Hungary"]

    let pt = HIData()
    pt.x = 63.4
    pt.y = 51.8
    pt.z = 15.4
    pt.name = "PT"
    pt.custom = ["country": "Portugal"]

    let nz = HIData()
    nz.x = 64
    nz.y = 82.9
    nz.z = 31.3
    nz.name = "NZ"
    nz.custom = ["country": "New Zealand"]

    bubble.data = [be, de, fi, nl, se, es, fr, no, uk, it, ru, us, hu, pt, nz]

    options.series = [bubble]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

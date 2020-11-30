import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["sankey", "organization"]

    let options = HIOptions()

    let chart = HIChart()
    chart.height = 600
    chart.inverted = true
    options.chart = chart

    let title = HITitle()
    title.text = "Highcharts Org Chart"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.point = HIPoint()
    accessibility.point.descriptionFormatter = HIFunction(jsFunction: "function (point) { var nodeName = point.toNode.name, nodeId = point.toNode.id, nodeDesc = nodeName === nodeId ? nodeName : nodeName + ', ' + nodeId, parentDesc = point.fromNode.id; return point.index + '. ' + nodeDesc + ', reports to ' + parentDesc + '.'; }")
    options.accessibility = accessibility

    let highsoft = HIOrganization()
    highsoft.name = "Highsoft"
    highsoft.keys = ["from", "to"]
    highsoft.data = [
      ["Shareholders", "Board"],
      ["Board", "CEO"],
      ["CEO", "CTO"],
      ["CEO", "CPO"],
      ["CEO", "CSO"],
      ["CEO", "CMO"],
      ["CEO", "HR"],
      ["CTO", "Product"],
      ["CTO", "Web"],
      ["CSO", "Sales"],
      ["CMO", "Market"]
      ]

    let level0 = HILevels()
    level0.level = 0
    level0.color = HIColor(name: "silver")
    level0.dataLabels = HIDataLabels()
    level0.dataLabels.color = HIColor(name: "black")

    let level1 = HILevels()
    level1.level = 1
    level1.color = HIColor(name: "silver")
    level1.dataLabels = HIDataLabels()
    level1.dataLabels.color = HIColor(name: "black")

    let level2 = HILevels()
    level2.level = 2
    level2.color = HIColor(hexValue: "980104")

    let level4 = HILevels()
    level4.level = 4
    level4.color = HIColor(hexValue: "359154")

    highsoft.levels = [level0, level1, level2, level4]

    let shareholders = HINodes()
    shareholders.id = "Shareholders"

    let board = HINodes()
    board.id = "Board"

    let ceo = HINodes()
    ceo.id = "CEO"
    ceo.title = "CEO"
    ceo.name = "Grethe Hjetland"
    ceo.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132317/Grethe.jpg"

    let hr = HINodes()
    hr.id = "HR"
    hr.title = "HR/CFO"
    hr.name = "Anne Jorunn Fjærestad"
    hr.color = HIColor(name: "007ad0")
    hr.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132317/Grethe.jpg"
    hr.column = 3
    hr.offset = "75%"

    let cto = HINodes()
    cto.id = "CTO"
    cto.title = "CTO"
    cto.name = "Christer Vasseng"
    cto.column = 4
    cto.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12140620/Christer.jpg"
    cto.layout = "hanging"

    let cpo = HINodes()
    cpo.id = "CPO"
    cpo.title = "CPO"
    cpo.name = "Torstein Hønsi"
    cpo.column = 4
    cpo.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12131849/Torstein1.jpg"

    let cso = HINodes()
    cso.id = "CSO"
    cso.title = "CSO"
    cso.name = "Anita Nesse"
    cso.column = 4
    cso.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132313/Anita.jpg"
    cso.layout = "hanging"

    let cmo = HINodes()
    cmo.id = "CMO"
    cmo.title = "CMO"
    cmo.name = "Vidar Brekke"
    cmo.column = 4
    cmo.image = "https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/13105551/Vidar.jpg"
    cmo.layout = "hanging"

    let product = HINodes()
    product.id = "Product"
    product.title = "Product developers"

    let web = HINodes()
    web.id = "Web"
    web.title = "Web devs, sys admin"

    let sales = HINodes()
    sales.id = "Sales"
    sales.title = "Sales team"

    let market = HINodes()
    market.id = "Market"
    market.title = "Marketing team"

    highsoft.nodes = [shareholders, board, ceo, hr, cto, cpo, cso, cmo, product, web, sales, market]

    highsoft.colorByPoint = false
    highsoft.color = HIColor(hexValue: "007ad0")
    let dataLabels = HIDataLabels()
    dataLabels.color = HIColor(name: "white")
    highsoft.dataLabels = [dataLabels]
    highsoft.borderColor = HIColor(name: "white")
    highsoft.nodeWidth = 65

    options.series = [highsoft]

    let tooltip = HITooltip()
    tooltip.outside = true
    options.tooltip = tooltip

    let exporting = HIExporting()
    exporting.allowHTML = true
    exporting.sourceWidth = 800
    exporting.sourceHeight = 600
    options.exporting = exporting

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["wordcloud"]

    let options = HIOptions()

    let title = HITitle()
    title.text = "Wordcloud of Lorem Ipsum"
    options.title = title

    let accessibility = HIAccessibility()
    accessibility.screenReaderSection = HIScreenReaderSection()
    accessibility.screenReaderSection.beforeChartFormat = "<h5>{chartTitle}</h5><div>{chartSubtitle}</div><div>{chartLongdesc}</div><div>{viewTableButton}</div>"
    options.accessibility = accessibility

    let occurrences = HIWordcloud()
    occurrences.name = "Occurrences"
    occurrences.data = [ [
      "name" : "Lorem",
      "weight" : 1
      ], [
      "name" : "ipsum",
      "weight" : 1
      ], [
      "name" : "dolor",
      "weight" : 1
      ], [
      "name" : "sit",
      "weight" : 1
      ], [
      "name" : "amet",
      "weight" : 1
      ], [
      "name" : "consectetur",
      "weight" : 1
      ], [
      "name" : "adipiscing",
      "weight" : 1
      ], [
      "name" : "elit",
      "weight" : 1
      ], [
      "name" : "Aenean",
      "weight" : 1
      ], [
      "name" : "bibendum",
      "weight" : 1
      ], [
      "name" : "erat",
      "weight" : 1
      ], [
      "name" : "ac",
      "weight" : 1
      ], [
      "name" : "justo",
      "weight" : 1
      ], [
      "name" : "sollicitudin",
      "weight" : 1
      ], [
      "name" : "quis",
      "weight" : 1
      ], [
      "name" : "lacinia",
      "weight" : 1
      ], [
      "name" : "ligula",
      "weight" : 1
      ], [
      "name" : "fringilla",
      "weight" : 1
      ], [
      "name" : "Pellentesque",
      "weight" : 1
      ], [
      "name" : "hendrerit",
      "weight" : 1
      ], [
      "name" : "nisi",
      "weight" : 1
      ], [
      "name" : "vitae",
      "weight" : 1
      ], [
      "name" : "posuere",
      "weight" : 1
      ], [
      "name" : "condimentum",
      "weight" : 1
      ], [
      "name" : "lectus",
      "weight" : 1
      ], [
      "name" : "urna",
      "weight" : 1
      ], [
      "name" : "accumsan",
      "weight" : 1
      ], [
      "name" : "libero",
      "weight" : 1
      ], [
      "name" : "rutrum",
      "weight" : 1
      ], [
      "name" : "commodo",
      "weight" : 1
      ], [
      "name" : "mi",
      "weight" : 1
      ], [
      "name" : "lacus",
      "weight" : 1
      ], [
      "name" : "pretium",
      "weight" : 1
      ], [
      "name" : "erat",
      "weight" : 1
      ], [
      "name" : "Phasellus",
      "weight" : 1
      ], [
      "name" : "pretium",
      "weight" : 1
      ], [
      "name" : "ultrices",
      "weight" : 1
      ], [
      "name" : "mi",
      "weight" : 1
      ], [
      "name" : "sed",
      "weight" : 1
      ], [
      "name" : "semper",
      "weight" : 1
      ], [
      "name" : "Praesent",
      "weight" : 1
      ], [
      "name" : "ut",
      "weight" : 1
      ], [
      "name" : "tristique",
      "weight" : 1
      ], [
      "name" : "magna",
      "weight" : 1
      ], [
      "name" : "Donec",
      "weight" : 1
      ], [
      "name" : "nisl",
      "weight" : 1
      ], [
      "name" : "tellus",
      "weight" : 1
      ], [
      "name" : "sagittis",
      "weight" : 1
      ], [
      "name" : "ut",
      "weight" : 1
      ], [
      "name" : "tempus",
      "weight" : 1
      ], [
      "name" : "sit",
      "weight" : 1
      ], [
      "name" : "amet",
      "weight" : 1
      ], [
      "name" : "consectetur",
      "weight" : 1
      ], [
      "name" : "eget",
      "weight" : 1
      ], [
      "name" : "pretium",
      "weight" : 1
      ], [
      "name" : "est",
      "weight" : 1
      ], [
      "name" : "laoreet",
      "weight" : 1
      ], [
      "name" : "ut",
      "weight" : 1
      ], [
      "name" : "Quisque",
      "weight" : 1
      ], [
      "name" : "tristique",
      "weight" : 1
      ], [
      "name" : "augue",
      "weight" : 1
      ], [
      "name" : "ac",
      "weight" : 1
      ], [
      "name" : "eros",
      "weight" : 1
      ], [
      "name" : "malesuada",
      "weight" : 1
      ], [
      "name" : "vitae",
      "weight" : 1
      ], [
      "name" : "facilisis",
      "weight" : 1
      ], [
      "name" : "mauris",
      "weight" : 1
      ], [
      "name" : "sollicitudin",
      "weight" : 1
      ], [
      "name" : "Mauris",
      "weight" : 1
      ], [
      "name" : "ac",
      "weight" : 1
      ], [
      "name" : "molestie",
      "weight" : 1
      ], [
      "name" : "nulla",
      "weight" : 1
      ], [
      "name" : "vitae",
      "weight" : 1
      ], [
      "name" : "facilisis",
      "weight" : 1
      ], [
      "name" : "quam",
      "weight" : 1
      ], [
      "name" : "Curabitur",
      "weight" : 1
      ], [
      "name" : "placerat",
      "weight" : 1
      ], [
      "name" : "ornare",
      "weight" : 1
      ], [
      "name" : "sem",
      "weight" : 1
      ], [
      "name" : "in",
      "weight" : 1
      ], [
      "name" : "mattis",
      "weight" : 1
      ], [
      "name" : "purus",
      "weight" : 1
      ], [
      "name" : "posuere",
      "weight" : 1
      ], [
      "name" : "eget",
      "weight" : 1
      ], [
      "name" : "Praesent",
      "weight" : 1
      ], [
      "name" : "non",
      "weight" : 1
      ], [
      "name" : "condimentum",
      "weight" : 1
      ], [
      "name" : "odio",
      "weight" : 1
      ], [
      "name" : "Nunc",
      "weight" : 1
      ], [
      "name" : "aliquet",
      "weight" : 1
      ], [
      "name" : "odio",
      "weight" : 1
      ], [
      "name" : "nec",
      "weight" : 1
      ], [
      "name" : "auctor",
      "weight" : 1
      ], [
      "name" : "congue",
      "weight" : 1
      ], [
      "name" : "sapien",
      "weight" : 1
      ], [
      "name" : "justo",
      "weight" : 1
      ], [
      "name" : "dictum",
      "weight" : 1
      ], [
      "name" : "massa",
      "weight" : 1
      ], [
      "name" : "nec",
      "weight" : 1
      ], [
      "name" : "fermentum",
      "weight" : 1
      ], [
      "name" : "massa",
      "weight" : 1
      ], [
      "name" : "sapien",
      "weight" : 1
      ], [
      "name" : "non",
      "weight" : 1
      ], [
      "name" : "tellus",
      "weight" : 1
      ], [
      "name" : "Praesent",
      "weight" : 1
      ], [
      "name" : "luctus",
      "weight" : 1
      ], [
      "name" : "eros",
      "weight" : 1
      ], [
      "name" : "et",
      "weight" : 1
      ], [
      "name" : "nunc",
      "weight" : 1
      ], [
      "name" : "pretium",
      "weight" : 1
      ], [
      "name" : "hendrerit",
      "weight" : 1
      ], [
      "name" : "In",
      "weight" : 1
      ], [
      "name" : "consequat",
      "weight" : 1
      ], [
      "name" : "et",
      "weight" : 1
      ], [
      "name" : "eros",
      "weight" : 1
      ], [
      "name" : "nec",
      "weight" : 1
      ], [
      "name" : "interdum",
      "weight" : 1
      ], [
      "name" : "Ut",
      "weight" : 1
      ], [
      "name" : "neque",
      "weight" : 1
      ], [
      "name" : "dui",
      "weight" : 1
      ], [
      "name" : "maximus",
      "weight" : 1
      ], [
      "name" : "id",
      "weight" : 1
      ], [
      "name" : "elit",
      "weight" : 1
      ], [
      "name" : "ac",
      "weight" : 1
      ], [
      "name" : "consequat",
      "weight" : 1
      ], [
      "name" : "pretium",
      "weight" : 1
      ], [
      "name" : "tellus",
      "weight" : 1
      ], [
      "name" : "Nullam",
      "weight" : 1
      ], [
      "name" : "vel",
      "weight" : 1
      ], [
      "name" : "accumsan",
      "weight" : 1
      ], [
      "name" : "lorem",
      "weight" : 1
      ]
    ]

    options.series = [occurrences]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

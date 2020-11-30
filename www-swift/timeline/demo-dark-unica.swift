import Highcharts
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let chartView = HIChartView(frame: view.bounds)
    chartView.theme = "dark-unica"
    chartView.plugins = ["timeline"]

    let options = HIOptions()

    let accessibility = HIAccessibility()
    accessibility.screenReaderSection = HIScreenReaderSection()
    accessibility.screenReaderSection.beforeChartFormat = "<h5>{chartTitle}</h5><div>{typeDescription}</div><div>{chartSubtitle}</div><div>{chartLongdesc}</div><div>{viewTableButton}</div>"
    accessibility.point = HIPoint()
    accessibility.point.valueDescriptionFormat = "{index}. {point.label}. {point.description}."
    options.accessibility = accessibility

    let xAxis = HIXAxis()
    xAxis.visible = false
    options.xAxis = [xAxis]

    let yAxis = HIYAxis()
    yAxis.visible = false
    options.yAxis = [yAxis]

    let title = HITitle()
    title.text = "Timeline of Space Exploration"
    options.title = title

    let subtitle = HISubtitle()
    subtitle.text = "Info source: <a href=\"https://en.wikipedia.org/wiki/Timeline_of_space_exploration\">www.wikipedia.org</a>"
    options.subtitle = subtitle

    options.colors = ["#4185F3", "#427CDD", "#406AB2", "#3E5A8E", "#3B4A68", "#363C46"]

    let firstDogs = HIData()
    firstDogs.name = "First dogs"
    firstDogs.label = "1951: First dogs in space"
    firstDogs.definition = "22 July 1951 First dogs in space (Dezik and Tsygan) "

    let sputnik1 = HIData()
    sputnik1.name = "Sputnik 1"
    sputnik1.label = "1957: First artificial satellite"
    sputnik1.definition = "4 October 1957 First artificial satellite. First signals from space."

    let humanSpaceflight = HIData()
    humanSpaceflight.name = "First human spaceflight"
    humanSpaceflight.label = "1961: First human spaceflight (Yuri Gagarin)"
    humanSpaceflight.definition = "First human spaceflight (Yuri Gagarin), and the first human-crewed orbital flight"

    let humanMoon = HIData()
    humanMoon.name = "First human on the Moon"
    humanMoon.label = "1969: First human on the Moon"
    humanMoon.definition = "First human on the Moon, and first space launch from a celestial body other than the Earth. First sample return from the Moon"

    let spaceStation = HIData()
    spaceStation.name = "First space station"
    spaceStation.label = "1971: First space station"
    spaceStation.definition = "Salyut 1 was the first space station of any kind, launched into low Earth orbit by the Soviet Union on April 19, 1971."

    let apolloSoyuz = HIData()
    apolloSoyuz.name = "Apollo–Soyuz Test Project"
    apolloSoyuz.label = "1975: First multinational manned mission"
    apolloSoyuz.definition = "The mission included both joint and separate scientific experiments, and provided useful engineering experience for future joint US–Russian space flights, such as the Shuttle–Mir Program and the International Space Station."

    let timeline = HITimeline()
    timeline.data = [firstDogs, sputnik1, humanSpaceflight, humanMoon, spaceStation, apolloSoyuz]

    options.series = [timeline]

    chartView.options = options

    self.view.addSubview(chartView)
  }

}

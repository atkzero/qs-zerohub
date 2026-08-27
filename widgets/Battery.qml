import Quickshell
import Quickshell.Services.UPower
import QtQuick
import QtQuick.Layouts

RowLayout {
  id: root
  spacing: 8

  property var battery: UPower.displayDevice
  property bool charging: battery.state === UPowerDeviceState.Charging
  readonly property int level: Math.round(battery.percentage * 100)

  readonly property string icon: {
    if (charging) return String.fromCodePoint(0xF0084)
    if (level >= 100) return String.fromCodePoint(0xF0079)
    if (level < 10) return String.fromCodePoint(0xF0083)

    return String.fromCodePoint(0xF007A + (Math.floor(level / 10) - 1))
  }

  Text {
    text: root.icon
    color: root.charging ? "#7ad9a8"
                         : root.level <= 15 ? "#ff5048"
                         : root.level <= 30 ? "#ffa478"
                         : "#7ad9a8"
    font {
      family: "ComicShannsMono Nerd Font"
      pixelSize: 14
    }
  }
  Text {
    text: root.level + "%"
    color: "#690000"

    font {
      family: "ComicShannsMono Nerd Font"
      weight: 500
    }
  }
}

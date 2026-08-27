import QtQuick
import qs.modules

Rectangle {
  id: clock_bg
  width: clock_txt.implicitWidth + 10
  height: clock_txt.implicitHeight + 8
  radius: 4
  color: "#111111"
  border.color: "#332423"
  Text {
    id: clock_txt
    anchors.centerIn: parent
    text: Time.time
    color: "#690000"
    font.family: "ComicShannsMono Nerd Font"
    font.pixelSize: 14
    font.weight: 1000
    font.capitalization: Font.AllUppercase
  }
}

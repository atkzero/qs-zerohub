import QtQuick

Rectangle {
  id: root
  width: 35
  height: 35
  color: "transparent"

  Image {
    id: logo
    anchors.fill: parent
    source: "file:///home/atkzero/Downloads/blackarch-linux-logo_440x440.png"
    fillMode: Image.PreserveAspectFit
  }
}

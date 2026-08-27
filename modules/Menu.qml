import Quickshell
import Quickshell.Services.SystemTray
import QtQuick
import QtQuick.Layouts

PopupWindow {
  id: root 

  required property var parentWindow
  required property bool visible
  anchor.window: parentWindow
  anchor.rect.x: parentWindow.width
  anchor.rect.y: parentWindow.height
  
  implicitHeight: 400
  implicitWidth: 250

  Rectangle {
    anchors.fill: parent
    color: "#2d2d2d"
    radius: 5
  }
}

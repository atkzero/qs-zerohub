import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Wayland
import Quickshell.Hyprland
import qs.widgets

Scope {
  id: bar

  property string fontFamily: "ComicShannsMono Nerd Font"
  property int fontSize: 14
  Variants {
    model: Quickshell.screens

    PanelWindow {
      id: barFloating
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }
      margins {
        right: 10
        left: 10
        top: 5
      }
      color: "transparent"
      implicitHeight: 38
      Menu {
        id: popupMenu
        signal clicked
        parentWindow: barFloating
        visible: true
      }
      Rectangle {
        id: rect_bg
        anchors.fill: parent
        radius: 4
        color: "#181818"
        border.color: "#fb2827"
        border.width: 2
        RowLayout {
          width: parent.width
          height: parent.height
          spacing: 0
          Icon {
            Layout.rightMargin: 8
            Layout.leftMargin: 8
            MouseArea {
              id: menuClick
              acceptedButtons: Qt.LeftButton
              onClicked: (mouse)=> {
                if (mouse.button == Qt.LeftButton)
                popupMenu.clicked()
                !popupMenu.visible;
              }
            }
          }
          Clock {}
          Item { Layout.fillWidth: true }
          Workspaces { anchors.centerIn: parent }
          Battery { Layout.rightMargin: 8 }
        }
      }
    }
  }
}

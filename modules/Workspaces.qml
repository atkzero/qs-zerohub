import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
  id: ws
  color: "#121212"
  border.color: "#332423"
  implicitWidth: 300
  implicitHeight: 30
  radius: 6
  RowLayout {
    Layout.preferredWidth: ws.implicitWidth
    Layout.fillHeight: true
    anchors.centerIn: parent
    Repeater {
      model: 5
      
      Rectangle {
        id: wsButton
        required property int index
        
        property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
        Layout.margins: 1
        implicitWidth: label.implicitWidth + 35
        implicitHeight: 25
        radius: 4
        color: isActive ? "#690000" : (ws ? "transparent" : "transparent")
        border.color: isActive ? "#fb2827" : (ws ? "#fb2827" : "transparent")

        Behavior on color {
          ColorAnimation { duration: 50 }
        }
        Text {
          id: label
          anchors.centerIn: parent
          text: wsButton.index + 1
          color: wsButton.isActive ? "#101010" : (wsButton.ws ? "#ffedcf" : "#5a4d3e")

          font {
            family: "ComicShannsMono Nerd Font"
            pixelSize: 14
          }
        }
        MouseArea {
          onPressed: (mouse) => {
            dispatch("hl.dsp.focus({ worksapce = '()' })")
            mouse.accepted = true
          }
        }
      } 
    }
  }
}

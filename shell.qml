import QtQuick
import Quickshell
import "modules"

ShellRoot {
  id: root
  Bar {}

  Variants {
    model: Quickshell.screens
    Wallpaper {}
  }
}

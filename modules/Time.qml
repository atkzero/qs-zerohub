pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
  id: root
  readonly property string time: {
    Qt.formatDateTime(clock.date, " MMM/dd/yyyy || hhmm ")
  }
  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }
} 

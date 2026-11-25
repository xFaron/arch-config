import Quickshell
import QtQuick

Scope {
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors { top: true; left: true; right: true }
            implicitHeight: 32
            color: "#1e1e2e"

            Text {
                anchors.centerIn: parent
                text: Qt.formatDateTime(clock.date, "ddd d MMM  hh:mm")
                color: "#cdd6f4"
                font.family: "JetBrainsMono Nerd Font"
                font.pixelSize: 14
            }
        }
    }
}

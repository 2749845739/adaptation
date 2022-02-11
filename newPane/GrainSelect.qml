import QtQuick 2.0
import "../newComponent"

Item {
    Background {
        id: background
        anchors.fill: parent.fill
    }

    Row {
        anchors.verticalCenter: background.con
    }

    Rectangle {
        x: 500
        y: 500
        width: 30
        height: 30
        color: "#3a3a3a"
        anchors.centerIn: parent.Center
    }
}

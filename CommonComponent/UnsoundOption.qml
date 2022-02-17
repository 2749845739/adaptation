import QtQuick 2.0

Item {
    id: unsoundOption
    implicitWidth: 150
    implicitHeight: 50
    property alias text: label.text
    property bool optionEnabled: false

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        border.color: "#3a3a3a"
        border.width: 1
        radius: 10

        Text {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 20
            color: "#000000"
            text: "选项"
        }
    }

    onOptionEnabledChanged: {
        if (unsoundOption.optionEnabled === true) {
            rectangle.color = "#1e90ff"
            rectangle.border.color = "#ffffff"
            label.color = "#ffffff"
            label.font.bold = true
        } else {
            rectangle.color = "#ffffff"
            rectangle.border.color = "#000000"
            label.color = "#000000"
            label.font.bold = false
        }
    }
}

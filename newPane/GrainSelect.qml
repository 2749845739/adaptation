import QtQuick 2.0
import "../newComponent"

Item {
    Background {
        id: background
        anchors.fill: parent.fill
    }

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 200

        Rectangle {
            width: 200
            height: 300
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pointSize: 50
                text: qsTr("小麦")
            }
        }
        Rectangle {
            width: 200
            height: 300
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pointSize: 50
                text: qsTr("玉米")
            }
        }
        Rectangle {
            width: 200
            height: 300
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pointSize: 50
                text: qsTr("高粱")
            }
        }
        Rectangle {
            width: 200
            height: 300
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pointSize: 50
                text: qsTr("稻谷")
            }
        }
    }
}

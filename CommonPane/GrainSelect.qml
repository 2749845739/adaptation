import QtQuick 2.0
import "../CommonComponent"

Item {
    id: grainSelect
    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 200

        Rectangle {
            width: 200
            height: 350
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("小麦")
            }
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/FileImport.qml"
            }
        }

        Rectangle {
            width: 200
            height: 350
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("玉米")
            }
        }
        Rectangle {
            width: 200
            height: 350
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("高粱")
            }
        }
        Rectangle {
            width: 200
            height: 350
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("稻谷")
            }
        }
    }
}

import QtQuick 2.0
import "../CommonComponent"

Item {
    id: grainSelect

    property int rec_width: 250
    property int rec_height: 400

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 200

        Rectangle {
            width: rec_width
            height: rec_height
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("小麦")
            }
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/DataImport.qml"
            }
        }

        Rectangle {
            width: rec_width
            height: rec_height
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("玉米")
            }
        }
        Rectangle {
            width: rec_width
            height: rec_height
            border.color: "#3a3a3a"
            border.width: 1
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: qsTr("高粱")
            }
        }
        Rectangle {
            width: rec_width
            height: rec_height
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

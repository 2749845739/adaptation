import QtQuick 2.0

Item {
    implicitWidth: 150
    implicitHeight: 35
    property alias text: label.text
    property alias rec_height: rectangle.height

    Rectangle {
        id: rectangle
        width: 150
        height: 50
        border.color: "#3a3a3a"
        border.width: 1

        Text {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 20
            text: "选项"
        }

        //        MouseArea {
        //            anchors.fill: parent
        //            onClicked: {
        //                root.clicked()
        //            }
        //        }
    }
}

import QtQuick 2.12
import QtQuick.Controls 2.5
import "../CommonPane"

Item {
    id: background
    implicitWidth: 2560
    implicitHeight: 1080
    property alias topHeight: titleRect.height

    Rectangle {
        id: titleRect
        anchors.top: parent.top
        width: parent.width
        height: 50
        border.color: "#3a3a3a"
        border.width: 1
        Row {
            //            height: parent.height
            anchors.fill: parent
            //            anchors.verticalCenter: parent.verticalCenter
            Image {
                id: logo
                height: 40
                fillMode: Image.PreserveAspectFit
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Image/image/company/logo.png"
            }

            Image {
                id: closeButton
                width: sourceSize.width
                height: sourceSize.height
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Image/image/normal/closeDialog.png"

                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.quit()
                }
            }
        }
    }

    Rectangle {
        id: contentRect
        y: 50
        width: parent.width
        height: parent.height - 50
        border.color: "#3a3a3a"
        border.width: 1
    }
}

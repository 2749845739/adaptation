import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    //    id: background
    width: 1920
    height: 1122

    Rectangle {
        id: titleRect
        anchors.top: parent.top
        width: parent.width
        height: 50
        border.color: "#3a3a3a"
        border.width: 1
        Row {
            height: parent.height
            Image {
                id: logo
                height: 40
                fillMode: Image.PreserveAspectFit
                anchors.left: parent.left
                anchors.margins: 10
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Image/image/company/logo.png"
                //                width: sourceSize.width
                //                height: sourceSize.height
            }

            Image {
                id: closeButton
                width: sourceSize.width
                height: sourceSize.height
                //                anchors.right: parent.right
                //                anchors.margins: 1000
                anchors.left: logo.right
                anchors.margins: 1600
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

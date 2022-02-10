import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQml 2.12
import "../common"

Item {
    id: background
    width: 1920
    height: 1122

    Rectangle {
        width: parent.width
        height: 50
        border.color: "#3a3a3a"
        border.width: 1
        Row {
            id: toolRow
            anchors.right: parent.right
            height: 24
            spacing: 20
            anchors.rightMargin: 20
            layoutDirection: Qt.RightToLeft
            anchors.verticalCenter: parent.verticalCenter

            Image {
                source: "file"
            }

            CusButton_Image {
                id: close
                //anchors.right: parent.right
                width: 24
                height: 24
                btnImgUrl: hovered
                           || pressed ? "qrc:/Image/image/Window/close_white.png" : "qrc:/Image/image/Window/close_gray.png"
                tipText: "关闭"
                onClicked: {
                    dialogClose.open()
                }
            }
        }
    }

    Rectangle {
        y: 50
        width: parent.width
        height: parent.height - 50
        border.color: "#3a3a3a"
        border.width: 1
    }
}

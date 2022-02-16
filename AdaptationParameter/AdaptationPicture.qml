import QtQuick 2.0
import "../CommonComponent"

Item {
    TitleOption {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 100 //使用margin时 ，必须配套使用left
        text: qsTr("返回")
    }
}
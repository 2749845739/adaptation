import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQml 2.12
//  ./同级目录    ../上级目录
import "./newComponent"

Window {
    id: selectType
    width: 1920
    height: 1122
    visible: true
    title: qsTr("Adaptation")

    MouseArea {
        anchors.fill: parent
        onClicked: Qt.quit()
    }
}

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQml 2.12
//  ./同级目录    ../上级目录
import "./CommonComponent"
import "./CommonPane"

Window {
    id: root
    width: 2560
    height: 1080
    visible: true
    visibility: "FullScreen"
    title: qsTr("Adaptation")

    Background {
        id: background
        anchors.fill: parent.fill
    }

    Loader {
        id: contentPane
        anchors.fill: parent
    }

    Component.onCompleted: contentPane.source = "qrc:/CommonPane/GrainSelect.qml"

    //    MouseArea {
    //        anchors.fill: parent
    //        onClicked: Qt.quit()
    //    }

    //        Rectangle {
    //            width: 100
    //            height: 50
    //            border.color: "#dc143c"
    //            border.width: 1
    //        }

    //        Rectangle {
    //            width: 100
    //            height: 50
    //            border.color: "#b8860b"
    //            border.width: 1
    //        }

    //        Rectangle {
    //            width: 100
    //            height: 50
    //            border.color: "#1e90ff"
    //            border.width: 1
    //        }
}

import QtQuick 2.0

Item {
    id: container

    property alias text: labelText.text
    signal clicked

    width: 170
    height: 35

    Rectangle {
        anchors.fill: parent
        color: "#1e90ff"
        //        opacity: 0.8
        radius: 10
    }

    Text {
        id: labelText
        font.pixelSize: 25
        font.bold: true
        color: "#ffffff"
        anchors.centerIn: parent
        text: qsTr("编辑")
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked()
    }
}

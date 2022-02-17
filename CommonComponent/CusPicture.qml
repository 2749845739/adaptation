import QtQuick 2.0

Rectangle {
    property alias source: picture.source
    width: 400
    height: 200
    border.color: "#808080"
    border.width: 5

    Image {
        id: picture
        width: parent.width
        height: parent.height
        source: "file"
    }
}

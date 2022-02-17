import QtQuick 2.0
import "../CommonComponent"

Item {
    TitleOption {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 100 //使用margin时 ，必须配套使用left
        text: qsTr("返回")
    }

    UnsoundRow {
        anchors.fill: parent
    }

    Grid {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 250
        columns: 4
        spacing: 30
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
        CusPicture {
            source: ""
        }
    }
}

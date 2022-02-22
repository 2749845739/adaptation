import QtQuick 2.0
import "../CommonComponent"

Item {

    Row {
        id: optionsRow
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 100 //使用margin时 ，必须配套使用left
        spacing: 50

        //布局中必须指定组件的宽高，1、自定义时明确implicitWidth  2、使用时指定width
        TitleOption {
            id: option
            text: qsTr("配置文件导入")
        }

        TitleOption {
            text: qsTr("适配参数调整")
            MouseArea {
                anchors.fill: parent
                //                onClicked: contentPane.source = "qrc:/CommonPane/ParameterPicture.qml"
            }
        }

        TitleOption {

            text: qsTr("检测结果调整")
        }
    }

    Row {
        id: lineItem01
        height: 50
        y: 150
        anchors.left: parent.left
        anchors.leftMargin: 10 //使用margin时 ，必须配套使用left
        spacing: 30

        Text {
            font.pixelSize: 20
            text: qsTr("默认配置文件:")
        }

        Rectangle {
            width: 350
            height: 30
            border.color: "#3a3a3a"
            border.width: 1
        }
        Image {
            width: 32
            height: 32

            source: "qrc:/Image/image/normal/open_file_original.png"

            MouseArea {}
        }
    }

    Row {
        id: lineItem02
        height: 50
        y: 220
        anchors.left: parent.left
        anchors.leftMargin: 10 //使用margin时 ，必须配套使用left
        spacing: 30

        Text {
            font.pixelSize: 20
            text: qsTr("参考配置文件:")
        }

        Rectangle {
            width: 350
            height: 30
            border.color: "#3a3a3a"
            border.width: 1
        }
        Image {
            width: 32
            height: 32
            //            visible: true
            source: "qrc:/Image/image/normal/open_file_original.png"

            MouseArea {//                anchors.fill: parent
                //                onClicked: Qt.quit()
            }
        }
    }

    Row {
        id: buttonLine
        anchors.top: parent.top
        anchors.topMargin: parent.height / 2 + 20
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 200

        CusButton {
            text: qsTr("确定")
        }

        CusButton {
            text: qsTr("自动适配")
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/CountRatio.qml"
            }
        }
    }
}

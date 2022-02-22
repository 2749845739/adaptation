import QtQuick 2.0
import QtQuick.Controls 2.12
import Qt.labs.qmlmodels 1.0
import "../CommonComponent"

Item {
    Row {
        id: optionsRow
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 100 //使用margin时 ，必须配套使用left
        spacing: 50

        //布局中必须指定组件的宽高，1、自定义时明确implicitWidth 或者 2、使用时指定width
        TitleOption {
            id: option
            text: qsTr("数据导入")
        }

        TitleOption {
            text: qsTr("配置文件导入")
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/ParameterPicture.qml"
            }
        }

        TitleOption {

            text: qsTr("检测结果调整")
        }
    }

    UnsoundRow {
        anchors.fill: parent
    }

    TableSimple {
        id: table01
        anchors {
            top: parent.top
            topMargin: 300
            left: parent.left
            leftMargin: 100
        }
    }

    TableComplex {
        id: table02
        theme: "颗粒比"
        anchors {
            top: parent.top
            topMargin: 170
            left: table01.right
            leftMargin: 200
        }
    }

    TableComplex {
        id: table03
        theme: "质量比"
        anchors {
            top: table02.bottom
            topMargin: 50
            left: table01.right
            leftMargin: 200
        }
    }

    // Column外部必须包一层Item,否则易出错
    Item {
        width: 200
        height: 200
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.verticalCenter: table02.verticalCenter
        Column {
            anchors.fill: parent
            spacing: 12
            CusPicture {
                source: "qrc:/Image/image/normal/image_black.png"
                width: 200
                height: 150
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 20
                text: "查看图片"
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                contentPane.source = "qrc:/CommonPane/ParameterPicture.qml"
                console.log("点击了 picture")
            }
        }
    }

    Item {
        width: 50
        height: 50
        z: 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 100
        Image {
            anchors.fill: parent
            source: "qrc:/Image/image/arrow/arrow_right.png"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: contentPane.source = "qrc:/CommonPane/ParameterPicture.qml"
        }
    }

    //底部按钮
    Row {
        id: buttonLine
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 150

        CusButton {
            text: qsTr("自动适配")
        }

        CusButton {
            text: qsTr("参考值适配")
        }

        CusButton {
            text: qsTr("默认值适配")
        }

        CusButton {
            text: qsTr("手动适配")
        }

        CusButton {
            text: qsTr("保存手动设置")
        }
    }
}

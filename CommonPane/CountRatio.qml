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

    //3个表格

    //查看图片

    //右侧按钮

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

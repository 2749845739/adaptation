import QtQuick 2.0
import "../CommonComponent"

Item {

    Row {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 100 //使用margin时 ，必须配套使用left
        spacing: 50

        //布局中必须指定组件的宽高，1、自定义时明确implicitWidth  2、使用时指定width
        TitleOption {
            id: option
            text: qsTr("配置文件导入")
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/FileImport.qml"
            }
        }

        TitleOption {
            text: qsTr("适配参数调整")
            MouseArea {
                anchors.fill: parent
                onClicked: contentPane.source = "qrc:/CommonPane/ParameterPicture.qml"
            }
        }

        TitleOption {

            text: qsTr("检测结果调整")
        }
    }
}

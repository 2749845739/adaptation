import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.qmlmodels 1.0

Item {

    Row {
        spacing: 10
        anchors.centerIn: parent

        Text {
            id: word
            text: qsTr("样品编号：")
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            width: 300
            height: 40
            anchors.verticalCenter: word.verticalCenter
            border.color: "black"

            TextInput {
                anchors.fill: parent
                font.pointSize: 20
                focus: true
            }
        }
    }

    Item {
        id: control
        width: columnWidth * 7 + headerWidth
        height: rowHeight * 9

        //颗粒比 或 质量比
        property string theme: "质量比"
        //表头行高
        property int headerHeight: rowHeight
        //表头列宽
        property int headerWidth: columnWidth + 20
        //行高的
        property int rowHeight: 40
        //列宽   不能用parent.width，否则会为0 ？
        property int columnWidth: 130

        //    property var rowHeader: ["结果", "自动适配", "参考配置", "默认配置", "手动配置"]
        property int selected: -1
        property var datas: [{
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }, {
                "sample01": "",
                "sample02": "",
                "sample03": "",
                "sample04": "",
                "sample05": "",
                "sample06": "",
                "extra": ""
            }]

        //表格内容，不包含表头
        TableView {
            id: table
            // 与fill搭配使用时，直接指定topMargin即可 （未指定fill时，表格不显示？）
            anchors.fill: parent
            anchors.topMargin: headerHeight
            anchors.leftMargin: control.headerWidth
            clip: true // 采用剪切
            //用于关闭拖动效果
            boundsBehavior: Flickable.OvershootBounds

            //内容行高
            rowHeightProvider: function (row) {
                return control.rowHeight
            }
            //内容列宽
            columnWidthProvider: function (column) {
                return control.columnWidth
            }

            //数据内容
            model: TableModel {
                TableModelColumn {
                    display: "sample01"
                }
                TableModelColumn {
                    display: "sample02"
                }
                TableModelColumn {
                    display: "sample03"
                }
                TableModelColumn {
                    display: "sample04"
                }
                TableModelColumn {
                    display: "sample05"
                }
                TableModelColumn {
                    display: "sample06"
                }
                TableModelColumn {
                    display: "extra"
                }

                rows: control.datas
            }

            //设置数据展示格式
            delegate: Rectangle {
                border.color: "black"
                color: control.selected === row ? "#EAF1FF" : "white" //点击改变行背景颜色
                TextInput {
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    //                text: display
                    font.pixelSize: 15
                    color: "black"
                    cursorVisible: True
                }

                //下侧的边框变浅色，使得分割线不变粗
                Rectangle {
                    color: "#E5E5E5"
                    width: parent.width
                    height: 1
                    anchors.bottom: parent.bottom
                }

                Rectangle {
                    color: "#E5E5E5"
                    width: 1
                    height: parent.height
                    anchors.right: parent.right
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        control.selected = row
                        console.log("点击了第", row, "行")
                    }
                }
            }
        } // TableView  end

        //水平表头
        Row {
            id: rowHeader
            anchors.fill: parent
            anchors.leftMargin: control.headerWidth
            clip: true
            spacing: 0

            Repeater {
                //            model: table.columns > 0 ? table.columns : 0
                model: 7
                Rectangle {
                    width: table.columnWidthProvider(
                               index) + table.columnSpacing
                    height: control.headerHeight
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: rowHeaderPara(index)
                        font.pixelSize: 15
                        color: "black"
                    }
                    //下侧的边框变浅色，使得分割线不变粗
                    Rectangle {
                        color: "#E5E5E5"
                        width: parent.width
                        height: 1
                        anchors.bottom: parent.bottom
                    }

                    Rectangle {
                        color: "#E5E5E5"
                        width: 1
                        height: parent.height
                        anchors.right: parent.right
                    }
                }
            }
        } //Row end

        //垂直表头
        Column {
            id: colHeader
            anchors.fill: parent
            clip: true
            spacing: 0

            Repeater {
                //            model: table.rows > 0 ? table.rows : 0
                model: 9
                Rectangle {
                    width: control.headerWidth
                    height: table.rowHeightProvider(index)
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: colHeaderPara(index)
                        font.pixelSize: 15
                        color: "black"
                    }
                    //下侧的边框变浅色，使得分割线不变粗
                    Rectangle {
                        color: "#E5E5E5"
                        width: parent.width
                        height: 1
                        anchors.bottom: parent.bottom
                    }

                    Rectangle {
                        color: "#E5E5E5"
                        width: 1
                        height: parent.height
                        anchors.right: parent.right
                    }
                }
            }
        } //Column end

        //补充整个右侧 和 下侧的边框
        Rectangle {
            color: "black"
            width: parent.width
            height: 1
            anchors.bottom: parent.bottom
        }
        Rectangle {
            color: "black"
            width: 1
            height: parent.height
            anchors.right: parent.right
        }

        function rowHeaderPara(n) {
            var para
            if (n === 6)
                para = "..."
            else
                para = "样本0" + (n + 1)
            return para
        }

        function colHeaderPara(n) {
            var para
            if (n === 0)
                para = "结果"
            else if (n === 1)
                para = "用户-" + theme
            else if (n === 8)
                para = "..."
            else
                para = "第" + (n - 1) + "轮-" + theme

            return para
        }
    }
}

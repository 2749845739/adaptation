import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.qmlmodels 1.0

// 只有横向标题栏，不需要点击行突出显示
Item {
    id: control
    width: 400
    height: 200

    //表头行高
    property int headerHeight: height / 2
    //行高的
    property int rowHeight: height / 4
    //列宽   不能用parent.width，否则会为0 ？
    property int columnWidth: width / 5

    property var horHeader: ["类别", "自动适配", "参考配置", "默认配置", "手动配置"]
    property int selected: -1
    property var datas: [{
            "type": "上限",
            "adaptation": "X1",
            "reference": "X2",
            "default": "X3",
            "manual": ""
        }, {
            "type": "上限",
            "adaptation": "X1",
            "reference": "X2",
            "default": "X3",
            "manual": ""
        }]

    //表格内容，不包含表头
    TableView {
        id: table
        // 与fill搭配使用时，直接指定topMargin即可 （未指定fill时，表格不显示？）
        anchors.fill: parent
        anchors.topMargin: headerHeight
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
                display: "type"
            }
            TableModelColumn {
                display: "adaptation"
            }
            TableModelColumn {
                display: "reference"
            }
            TableModelColumn {
                display: "default"
            }
            TableModelColumn {
                display: "manual"
            }
            // rows is 行数组
            rows: control.datas
        }

        //设置数据展示格式
        delegate: Rectangle {
            border.color: "black"
            //                        color: control.selected === row ? "#EAF1FF" : "white" //点击改变行背景颜色
            TextInput {
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                text: display
                font.pixelSize: 15
                color: "black"
                cursorVisible: True
                padding: 12
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
                    //注意增删改查只需要对control.datas原数组修改再赋值给table.model.rows即可更新表格视图
                    control.selected = row
                    console.log("点击了第", row, "行")
                }
            }
        }
    } // TableView  end

    Row {
        id: rowHeader
        anchors.fill: parent
        clip: true
        spacing: 0

        Repeater {
            model: table.columns > 0 ? table.columns : 0
            Rectangle {
                id: header_horizontal_item
                width: table.columnWidthProvider(index) + table.columnSpacing
                height: control.headerHeight
                color: "#A2CD5A"
                border.color: "black"

                Text {
                    anchors.centerIn: parent
                    text: control.horHeader[index]
                    font.pixelSize: 18
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
}

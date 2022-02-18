import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt.labs.qmlmodels 1.0

Item {
    id: control
    width: 400
    height: 200

    //表头行高
    property int headerHeight: height / 3
    //行高
    property int rowHeight: width / 4
    //列宽
    property variant columnWidthArr: [parent.width / 5, parent.width
        / 5, parent.width / 5, parent.width / 5, parent.width / 5]

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
        anchors.fill: parent
        clip: true // 采用剪切
        boundsBehavior: Flickable.StopAtBounds // 软边界效果

        //内容行高
        rowHeightProvider: function (row) {
            return control.rowHeight
        }
        //内容列的列宽
        columnWidthProvider: function (column) {
            return control.columnWidthArr[column]
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

        headerDelegate: headDel

        //表头委托
        Component {
            id: headDel
        }

        //设置数据展示格式
        delegate: Rectangle {
            color: control.selected === row ? "#EAF1FF" : "white" //点击改变行背景颜色
            // 表头文本
            Text {
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                text: display
                font.pixelSize: 15
                color: "#707070"
            }
            //分割线？
            Rectangle {
                color: "#E5E5E5"
                width: parent.width
                height: 1
                anchors.bottom: parent.bottom
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    //注意增删改查只需要对control.datas原数组修改再赋值给table.model.rows即可更新表格视图
                    control.selected = row
                    console.log("点击了第", row, "行")
                    //例 点击任意一行增加一条数据
                    control.datas.push({
                                           "type": "上限" + (table.model.rows.length + 1),
                                           "adaptation": "X1",
                                           "reference": "X2",
                                           "default": "X3",
                                           "manual": ""
                                       })
                    table.model.rows = control.datas
                    console.log(table.model.rows.length,
                                JSON.stringify(table.model.rows[row]))
                }
            }
        }
    } // TableView  end

    //横项表头
    Item {
        id: header_horizontal
        anchors {
            left: parent.left
            right: parent.right
        }
        height: control.headerHeight
        z: 2 // ???

        Row {
            id: header_horizontal_row
            anchors.fill: parent
            leftPadding: -table.contentX
            clip: true
            spacing: 0

            Repeater {
                model: table.columns > 0 ? table.columns : 0

                Rectangle {
                    id: header_horizontal_item
                    width: table.columnWidthProvider(
                               index) + table.columnSpacing
                    height: control.rowHeight - 1
                    color: "#F8F8F8"

                    Text {
                        anchors.centerIn: parent
                        text: control.horHeader[index]
                        font.pixelSize: 18
                        color: "#707070"
                    }
                    Rectangle {
                        height: 1
                        width: parent.width
                        anchors.bottom: parent.bottom
                        color: "#E5E5E5"
                    }
                    Rectangle {
                        height: 1
                        width: parent.width
                        anchors.top: parent.top
                        color: "#E5E5E5"
                    }
                }
            }
        }
    }
}

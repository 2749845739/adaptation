import QtQuick 2.0

Item {
    id: unsoundRow
    property string activeOption: "生芽粒"

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 70
        Repeater {
            model: ["生芽粒", "生霉粒", "虫蚀粒", "破损粒", "病斑粒", "黒胚粒", "异种粮", "有机杂", "无机杂", "正常颗粒"]
            UnsoundOption {
                text: modelData
                //activeOption 改变时，组件属性表达式 会实时变化
                optionEnabled: unsoundRow.activeOption === text
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        unsoundRow.activeOption = parent.text
                        console.log("activeOption = ", unsoundRow.activeOption)
                    }
                }
            }
        }
    }

    //        //activeOption 改变时，组件属性表达式 会实时变化
    //        UnsoundOption {
    //            //            unsoundRow.optionInit("生芽粒")
    //            text: qsTr("生芽粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("生霉粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("虫蚀粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("破损粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("病斑粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("黒胚粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("异种粮")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("有机杂")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("无机杂")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //        UnsoundOption {
    //            text: qsTr("正常颗粒")
    //            optionEnabled: unsoundRow.activeOption === text
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    unsoundRow.activeOption = parent.text
    //                    console.log("activeOption = ", unsoundRow.activeOption)
    //                }
    //            }
    //        }
    //    }

    //    function optionInit(str) {
    //        text: qsTr("strText")
    //        optionEnabled = (unsoundRow.activeOption === text)
    //        MouseArea: {
    //            //            anchors.fill: parent
    //            onClicked: {
    //                unsoundRow.activeOption = parent.text
    //                console.log("activeOption = ", unsoundRow.activeOption)
    //            }
    //        }
    //    }
}

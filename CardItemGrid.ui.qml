import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
    id: item1
    DropShadow {
        color: "#4d000000"
        source: cardItem
        verticalOffset: 4
        radius: 40
        samples: 81
        anchors.fill: cardItem
    }
    Rectangle {
        id: cardItem
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 16
        anchors.topMargin: 16
        Layout.minimumWidth: 300
        Layout.minimumHeight: 475
        radius: 8
        ColumnLayout {
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: cardItemImage
                radius: 8
                Layout.fillHeight: true
                Layout.preferredHeight: 255
                Layout.fillWidth: true
                Layout.preferredWidth: 300
                Image {
                    id: cardItemImageSource
                    source: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
                    fillMode: Image.PreserveAspectCrop
                    width: parent.width
                    height: parent.height
                    visible: false
                }
                OpacityMask {
                    id: cardItemImageMask
                    anchors.fill: cardItemImage
                    source: cardItemImageSource
                    maskSource: cardItemImage
                }

                Rectangle {
                    id: rectangle
                    width: cardItemImageMask.width
                    height: 5
                    color: "#ffffff"
                    anchors.bottom: cardItemImageMask.bottom
                    anchors.bottomMargin: 0
                }
            }
            ColumnLayout {
                id: cardItemBody
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.bottomMargin: 16
                Layout.topMargin: 16
                Layout.fillHeight: true
                Layout.fillWidth: true
                Item {
                    id: badgeAndFavorite
                    height: favorite.height
                    Layout.fillWidth: true
                    Label {
                        id: badge
                        color: "#0cbc87"
                        text: "All level"
                        anchors.left: parent.left
                        verticalAlignment: Text.AlignVCenter
                        Layout.fillWidth: false
                        rightPadding: 6
                        leftPadding: 6
                        bottomPadding: 4
                        topPadding: 4
                        font.pointSize: 12
                        font.family: "Roboto"
                        background: Rectangle {
                            color: "#4d0cbc87"
                            radius: 8
                        }
                    }

                    Button {
                        id: favorite
                        width: 24
                        height: 24
                        text: qsTr("Button")
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        padding: 0
                        rightPadding: 0
                        leftPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        icon.source: "Material/svg/outlined/heart.svg"
                        display: AbstractButton.IconOnly
                        flat: true
                    }
                }
            }
        }
    }
    states: [
        State {
            name: "State1"
            when: favorite.pressed

            PropertyChanges {
                target: favorite
                icon.color: "#d6293e"
                icon.source: "Font-Awesome/svgs/solid/heart.svg"
            }
        }
    ]
}

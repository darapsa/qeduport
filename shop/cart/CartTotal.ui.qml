import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
    id: cartTotal
    DropShadow {
        color: "#4d000000"
        source: cartTotalCard
        verticalOffset: 4
        radius: 40
        samples: 81
        anchors.fill: cartTotalCard
    }
    Rectangle {
        id: cartTotalCard
        radius: 8
        anchors.fill: parent
        ColumnLayout {
            id: cardBody
            anchors.fill: parent
            spacing: 16

            Label {
                id: title
                color: "#000000"
                text: qsTr("Cart total")
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.topMargin: 20
                Layout.margins: 8
                Layout.fillHeight: false
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
                font.pointSize: 22
                font.styleName: "Medium"
                font.family: "Roboto"
            }

            RowLayout {
                id: price
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.bottomMargin: 0
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
                Label {
                    color: "#000000"
                    text: qsTr("Original price")
                    Layout.fillHeight: false
                    font.family: "Roboto"
                    font.pointSize: 14
                    Layout.fillWidth: true
                }
                Label {
                    color: "#000000"
                    text: qsTr("$500")
                    horizontalAlignment: Text.AlignRight
                    Layout.fillHeight: false
                    font.weight: Font.Medium
                    font.pointSize: 14
                    Layout.fillWidth: true
                }
            }

            RowLayout {
                id: discount
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
                Label {
                    color: "#000000"
                    text: qsTr("Coupon discount")
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    font.family: "Roboto"
                    font.pointSize: 14
                }
                Label {
                    color: "#000000"
                    text: qsTr("-$500")
                    horizontalAlignment: Text.AlignRight
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    font.weight: Font.Medium
                }
            }

            RowLayout {
                id: total
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
                Label {
                    color: "#000000"
                    text: qsTr("Total")
                    Layout.fillHeight: false
                    font.family: "Roboto"
                    font.styleName: "Medium"
                    font.pointSize: 22
                    Layout.fillWidth: true
                }
                Label {
                    color: "#000000"
                    text: qsTr("$480")
                    horizontalAlignment: Text.AlignRight
                    Layout.fillHeight: false
                    font.styleName: "Medium"
                    font.pointSize: 22
                    font.family: "Roboto"
                    Layout.fillWidth: true
                }
            }

            Button {
                id: proceedButton
                text: qsTr("Proceed to checkout")
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.fillHeight: false
                font.weight: Font.Medium
                font.pointSize: 14
                font.family: "Roboto"
                Layout.fillWidth: true
                flat: false
                display: AbstractButton.TextOnly
            }

            Label {
                id: consent
                color: "#80000000"
                text: "By completing your purchase, you agree to these Terms of Service"
                wrapMode: Text.Wrap
                Layout.bottomMargin: 20
                Layout.rightMargin: 20
                Layout.leftMargin: 20
                Layout.fillHeight: false
                Layout.fillWidth: true
                font.pointSize: 12
                font.family: "Roboto"
            }
        }
    }
}

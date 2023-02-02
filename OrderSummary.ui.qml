import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
	color: "#ffffff"
	Layout.fillWidth: true
	Layout.fillHeight: true
	radius: 16

	ColumnLayout {
		anchors.fill: parent
		anchors.margins: 24
		Layout.margins: 24

		Label {
			id: oderSummaryTitle
			text: qsTr("Order Summary")
			font.family: "Roboto"
			font.weight: Font.Medium
			font.pointSize: 16
			Layout.fillWidth: true
			Layout.alignment: Qt.AlignTop
		}

		RowLayout {
			Layout.fillWidth: true
			Layout.alignment: Qt.AlignTop
			Label {
				id: transactionLabel
				color: "#6c757d"
				text: qsTr("Transaction code")
				font.family: "Roboto"
				font.weight: Font.Medium
				font.pointSize: 16
				Layout.fillWidth: true
			}
			Label {
				id: transactionCode
				text: qsTr("B0D123X")
				horizontalAlignment: Text.AlignRight
				font.family: "Roboto"
				font.weight: Font.Medium
				font.pointSize: 16
				Layout.fillWidth: true
			}
		}

		Rectangle {
			color: "transparent"
			radius: 8
			border.width: 1
			border.color: "#f5f7f9"
			Layout.fillWidth: true
			implicitHeight: 40
			RowLayout {
				anchors.fill: parent
				TextField {
					id: couponCode
					Layout.fillWidth: true
					Layout.fillHeight: true
					placeholderText: qsTr("Coupon code")
					font.pixelSize: 16
					font.family: "roboto"
					background: Rectangle {
						color: "transparent"
					}
				}
				Button {
					id: couponButton
					contentItem: Text {
						color: "#ffffff"
						text: "Apply"
						horizontalAlignment: Text.AlignHCenter
						verticalAlignment: Text.AlignVCenter
						font.weight: Font.Medium
						font.family: "Roboto"
						font.pointSize: 14
                        rightPadding: 12
                        leftPadding: 12
					}
					Layout.fillHeight: true
					background: Rectangle {
						color: "#066ac9"
						border.width: 0
						radius: 8
					}
				}
			}
		}
	}
}
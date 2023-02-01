import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ColumnLayout {
	Rectangle {
		color: "#ffffff"
		Layout.fillWidth: true
		Layout.fillHeight: true
		radius: 16
		ColumnLayout {
			anchors.fill: parent
			ColumnLayout {
                Layout.alignment: Qt.AlignTop
				spacing: 24
				Layout.fillWidth: true
				Layout.margins: 24
				Label {
					id: oderSummaryTitle
					text: qsTr("Order Summary")
					font.family: "Roboto"
					font.weight: Font.Medium
					font.pointSize: 16
					Layout.fillWidth: true
				}

				RowLayout {
					Layout.fillWidth: true
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
				RowLayout {
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
								placeholderText: qsTr("Coupon code")
								
								Layout.fillWidth: true
								font.pixelSize: 16
								font.family: "roboto"
								Layout.fillWidth: true
								Layout.fillHeight: true
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
		}
	}
}

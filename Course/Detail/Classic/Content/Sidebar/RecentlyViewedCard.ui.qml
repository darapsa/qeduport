import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
	id: recentlyViewedCard
	Layout.fillWidth: true
	implicitHeight: recentlyCardContent.height
	color: "#ffffff"
	radius: 8
	anchors.margins: 24
	
	ColumnLayout {
		id: recentlyCardContent
		anchors {
			left: parent.left
			right: parent.right
		}
		spacing: 16
		Label {
			text: qsTr("Recently viewed")
			font.pointSize: 22
			font.family: "roboto"
			color: "#000000"
			Layout.fillWidth: true
			Layout.leftMargin: 24
			Layout.topMargin: 24
			Layout.rightMargin: 24
		}
		RowLayout {
			Layout.fillWidth: true
			Layout.fillHeight: true
			spacing: 16
			Layout.leftMargin: 24
			Layout.rightMargin: 24
			Rectangle {
				color: "#eee"
				height: 80
				width: 100
				radius: 8
			}
			ColumnLayout {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Label {
					text: qsTr("Course title")
					font.pointSize: 14
					font.family: "roboto"
					font.styleName: "Medium"
					color: "#000000"
					Layout.fillWidth: true
				}
				RowLayout {
					Layout.fillWidth: true
					Layout.fillHeight: true
					Label {
						text: qsTr("$")
						font.pointSize: 14
						font.family: "roboto"
						font.styleName: "Medium"
						color: "#0cbc87"
						Layout.fillWidth: true
					}
					Label {
						text: qsTr("4.5")
						horizontalAlignment: Text.AlignRight
						font.pointSize: 14
						font.family: "roboto"
						font.styleName: "Medium"
						color: "#000000"
						Layout.fillWidth: true
					}
				}
			}
		}
		RowLayout {
			Layout.fillWidth: true
			Layout.fillHeight: true
			spacing: 16
			Layout.leftMargin: 24
			Layout.rightMargin: 24
			Layout.bottomMargin: 24
			Rectangle {
				color: "#eee"
				height: 80
				width: 100
				radius: 8
			}
			ColumnLayout {
				Layout.fillWidth: true
				Layout.fillHeight: true
				Label {
					text: qsTr("Course title")
					font.pointSize: 14
					font.family: "roboto"
					font.styleName: "Medium"
					color: "#000000"
					Layout.fillWidth: true
				}
				RowLayout {
					Layout.fillWidth: true
					Layout.fillHeight: true
					Label {
						text: qsTr("$")
						font.pointSize: 14
						font.family: "roboto"
						font.styleName: "Medium"
						color: "#0cbc87"
						Layout.fillWidth: true
					}
					Label {
						text: qsTr("4.5")
						horizontalAlignment: Text.AlignRight
						font.pointSize: 14
						font.family: "roboto"
						font.styleName: "Medium"
						color: "#000000"
						Layout.fillWidth: true
					}
				}
			}
		}
	}
}

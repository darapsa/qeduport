import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Rectangle {
	id: recentlyViewedCard
	Layout.fillWidth: true
	implicitHeight: recentlyCardContent.height
	color: "#ffffff"
	radius: 8
	anchors.margins: 24
	
/*
	DropShadow {
		source: recentlyViewedCard
		color: Qt.rgba(.0, .0, .0, .30)
		anchors.fill: recentlyViewedCard
	}
*/
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
				implicitHeight: 80
				implicitWidth: 100
				Layout.fillWidth: true
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
						color: "#000000"
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

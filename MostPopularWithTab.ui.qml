import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ColumnLayout {
	spacing: 8
	FontLoader {
		id: roboto
		source: doesntEmbed ? ""
		: "Roboto/Roboto-Medium.ttf"
	}

	Label {
		text: qsTr("Most Popular Courses")
		color: "#24292d"
		horizontalAlignment: Text.AlignHCenter
		wrapMode: Text.Wrap
		Layout.fillWidth: true
		font {
			family: doesntEmbed
			? "Roboto"
			: roboto.name
			pointSize: 44
		}
	}

	Label {
		text: qsTr("Choose from hundreds of courses from specialist organizations")
		color: "#747579"
		horizontalAlignment: Text.AlignHCenter
		wrapMode: Text.Wrap
		Layout.fillWidth: true
		font {
			family: doesntEmbed
			? "Roboto"
			: roboto.name
			pointSize: 14
		}
	}
	TabBar {
		background: Rectangle{
			color: "#1a066ac9"
			radius: 8
		}
		Layout.fillWidth: true
		implicitHeight: 58
		Layout.margins: 16
		padding: 16
		TabButton {
			text: qsTr("First")
			anchors.verticalCenter: parent.verticalCenter
			Layout.fillWidth: true
			Layout.leftMargin: 16
			background: Rectangle {
				radius: 8
			}
		}
		TabButton {
			text: qsTr("Second")
			anchors.verticalCenter: parent.verticalCenter
			Layout.fillWidth: true
			background: Rectangle {
				radius: 8
			}

		}
		TabButton {
			text: qsTr("Third")
			anchors.verticalCenter: parent.verticalCenter
			Layout.fillWidth: true
			background: Rectangle {
				radius: 8
			}
			contentItem: Text {
				color: "#000000"
				text: "Third"
				horizontalAlignment: Text.AlignHCenter
				verticalAlignment: Text.AlignVCenter
			}
		}
	}
}

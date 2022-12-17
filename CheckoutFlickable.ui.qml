import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	contentHeight: personal.height

	Rectangle {
		id: personal
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		ColumnLayout {
			Label {
				text: qsTr("Your name *")
			}
			TextField {
				placeholderText: qsTr("Name")
				Layout.fillWidth: true
			}

			anchors {
				top: parent.top
				topMargin: 25.6
				left: parent.left
				leftMargin: 25.6
				right: parent.right
				rightMargin: 25.6
				bottom: parent.bottom
				bottomMargin: 25.6
			}
		}
	}
}

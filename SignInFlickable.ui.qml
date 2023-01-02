import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	contentHeight: form.height

	ListView {
		id: form
		interactive: false
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		model: ListModel {
			ListElement {
				label: qsTr("Email address *")
				icon: "Bootstrap/icons/envelope-fill.svg"
				placeholder: qsTr("E-mail")
			}
			ListElement {
				label: qsTr("Password *")
				icon: "Font-Awesome/svgs/solid/lock.svg"
				placeholder: qsTr("password")
			}
		}

		delegate: ColumnLayout {
			width: form.width
			Label {
				text: label
			}
			TextField {
				placeholderText: placeholder
				Layout.fillWidth: true
			}
		}
	}
}

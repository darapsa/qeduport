import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias checkoutLogin: login
	contentHeight: personal.height

	Item {
		id: personal
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		ColumnLayout {

			RowLayout {
				Layout.alignment: Qt.AlignHCenter
				Label {
					text: qsTr("Already have an account?")
				}
				Text {
					id: login
					text: "<a href=\"sign-in.html\">Log in"
					+ "</a>"
					font.underline: false
				}
			}

			GridLayout {
				ColumnLayout {
					Label {
						text: qsTr("Your name *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Name")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Email address *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Email")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Mobile number *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Mobile number")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Select country *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Select country")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Select state *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Select state")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Postal code *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("PIN code")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				ColumnLayout {
					Label {
						text: qsTr("Address *")
						Layout.fillWidth: true
					}
					TextField {
						placeholderText: qsTr("Address")
						Layout.fillWidth: true
					}

					Layout.topMargin: 16
					Layout.leftMargin: 8
					Layout.rightMargin: 8
				}

				width: parent.width
				columns: width < 786 ? 1 : 2
				rows: width < 786 ? 4 : 7
				columnSpacing: 0
				rowSpacing: 0
			}
		}
	}
}

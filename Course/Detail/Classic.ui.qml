import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "../../Label" as Lbl
import "Classic/Content" as Content

Flickable {
	property alias introBadge: introBadge
	property alias introTitleHeader: introTitleHeader
	property alias introTitleParagraph: introTitleParagraph
	property alias mainContent: mainContent
	property alias rightSidebar: rightSidebar
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		Rectangle {
			color: "#f5f7f9"
			Layout.fillWidth: true
			implicitHeight: pageIntro.height + 96

			ColumnLayout {
				id: pageIntro
				anchors {
					left: parent.left
					leftMargin: 15
					right: parent.right
					rightMargin: 15
					verticalCenter: parent.verticalCenter
				}

				Rectangle {
					Layout.bottomMargin: 16
					implicitWidth: introBadge.width
					implicitHeight: introBadge.height
					radius: 5.2
					color: Qt.rgba( .0235, .416, .788, 1.0)
					Lbl.Hx {
						id: introBadge
						text: qsTr("Digital Marketing")
						color: "white"
						font.family: Eduport.baseFont
									.family
						horizontalAlignment: Text
								.AlignHCenter
						verticalAlignment: Text
								.AlignVCenter
						topPadding: 8
						leftPadding: 25.6
						rightPadding: 25.6
						bottomPadding: 8
					}
				}

				Lbl.Hx {
					id: introTitleHeader
					text: qsTr("The Complete Digital Marketing Course - 12 Courses in 1")
					color: "#24292d"
					Layout.fillWidth: true
					font.pointSize: 22.5
							+ .01875 * parent.width
				}

				Lbl.Body {
					id: introTitleParagraph
					text: qsTr("Satisfied conveying a dependent contented he gentleman agreeable do be. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do.")
					color: "#747579"
					Layout.fillWidth: true
				}
			}
		}

		GridLayout {
			Layout.topMargin: 64
			columns: body.width < 992 ? 1 : 2
			rows: body.width < 992 ? 2 : 1

			Content.Main {
				id: mainContent
				Layout.alignment: Qt.AlignTop
				Layout.maximumWidth: body.width < 992
					? body.width : body.width / 2
			}

			Content.Sidebar {
				id: rightSidebar
			}
		}
	}
}

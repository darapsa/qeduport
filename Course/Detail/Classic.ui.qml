import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Bootstrap
import Eduport
import "../../DropShadow" as DrpShdw
import "Classic/Content" as Content
import "Classic/Content/Sidebar" as ContentSidebar

Flickable {
	property alias introBadge: introBadge
	property alias introTitleHeader: introTitleHeader
	property alias introTitleParagraph: introTitleParagraph
	property alias mainContent: mainContent
	property alias video: video
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		Rectangle {
			color: Eduport.bsLight
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
					Label {
						id: introBadge
						text: qsTr("Digital Marketing")
						Bootstrap.heading: 6
						wrapMode: Label.Wrap
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

				Label {
					id: introTitleHeader
					text: qsTr("The Complete Digital Marketing Course - 12 Courses in 1")
					wrapMode: Label.Wrap
					Bootstrap.heading: 1
					Layout.fillWidth: true
				}

				Label {
					id: introTitleParagraph
					text: qsTr("Satisfied conveying a dependent contented he gentleman agreeable do be. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do.")
					wrapMode: Label.Wrap
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

			GridLayout {
				Layout.topMargin: 48
				Layout.bottomMargin: 48

				ColumnLayout {
					Layout.leftMargin: 15
					Layout.rightMargin: 15

					Item {
						Layout.fillWidth: true
						Layout.bottomMargin: 25.6
						implicitHeight: video.height
									+ 16

						DrpShdw.Box {
							source: videoRectangle
							anchors.fill:
								videoRectangle
						}

						Rectangle {
							id: videoRectangle
							color: Eduport.bsCardBg
							radius: 8
							anchors.fill: parent
						}

						ContentSidebar.Video {
							id: video
							anchors {
								left: parent
									.left
								leftMargin: 8
								right: parent
									.right
								rightMargin: 8
								verticalCenter:
								parent
								.verticalCenter
							}
						}
					}
/*
					Item {
						Layout.fillWidth: true
						implicitHeight: info.height

						DrpShdw.Box {
							source: infoRectangle
							anchors.fill:
								infoRectangle
						}

						Rectangle {
							id: infoRectangle
							color: Eduport.bsCardBg
							radius: 8
							anchors.fill: info
						}

						ContentSidebar.Info {
							id: info
							anchors {
								left: parent
									.left
								right: parent
									.right
							}
						}
					}
*/
				}
/*
				ColumnLayout {

					Item {
						Layout.fillWidth: true
						implicitHeight: recent.height

						DrpShdw.Box {
							source: recentRectangle
							anchors.fill:
								recentRectangle
						}

						Rectangle {
							id: recentRectangle
							color: Eduport.bsCardBg
							radius: 8
							anchors.fill: recent
						}

						ContentSidebar.Recent {
							id: recent
							anchors {
								left: parent
									.left
								right: parent
									.right
							}
						}
					}

					Item {
						Layout.fillWidth: true
						implicitHeight: tags.height

						DrpShdw.Box {
							source: tagsRectangle
							anchors.fill:
								tagsRectangle
						}

						Rectangle {
							id: tagsRectangle
							color: Eduport.bsCardBg
							radius: 8
							anchors.fill: tags
						}

						ContentSidebar.Tags {
							id: tags
							anchors {
								left: parent
									.left
								right: parent
									.right
							}
						}
					}
				}
*/
			}
		}
	}
}

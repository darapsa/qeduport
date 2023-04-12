import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "../../DropShadow" as DrpShdw
import "../../Label" as Lbl

Item {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/11.jpg"
	readonly property color allLevelsColor: "#ff6f42c1"
	readonly property color beginnerColor: "#ff0cbc87"
	readonly property color intermediateColor: "#ff17a2b8"
	readonly property color allLevelsBackgroundColor: "#1a6f42c1"
	readonly property color beginnerBackgroundColor: "#1a0cbc87"
	readonly property color intermediateBackgroundColor: "#1a17a2b8"
	property string badgeText: "All level"
	property color badgeColor: "#ff6f42c1"
	property color badgeBackgroundColor: "#1a6f42c1"
	property alias favorite: favorite
	property string titleText: "Build Responsive Websites with HTML"
	property alias titleArea: titleArea
	property string truncatedText: "Far advanced settling say finished raillery. Offered chiefly farther"
	property bool truncatedVisible: true
	property real rating: 4.0

	DrpShdw.Box {
		source: rectangle
		anchors.fill: rectangle
	}

	Rectangle {
		id: rectangle
		radius: 8
		color: Eduport.bsCardBg
		anchors {
			fill: parent
			topMargin: 25.6
			leftMargin: 12.8
			rightMargin: 12.8
		}

		Image {
			id: image
			anchors {
				top: parent.top
				left: parent.left
				right: parent.right
			}
			source: imageSource
			fillMode: Image.PreserveAspectFit
			layer.enabled: true
			layer.effect: OpacityMask {
				maskSource: Rectangle {
					width: image.width
					height: image.height
					radius: 8
				}
			}
		}

		Rectangle {
			height: 16
			color: Eduport.bsCardBg
			anchors {
				left: parent.left
				right: parent.right
				bottom: image.bottom
			}
		}

		ColumnLayout {
			id: body
			anchors {
				top: image.bottom
				left: parent.left
				leftMargin: 20
				right: parent.right
				rightMargin: 20
				bottom: footer.top
			}

			Item {
				id: badgeAndFavorite
				height: badge.height
				Layout.fillWidth: true
				Layout.bottomMargin: 8

				Label {
					id: badge
					anchors.left: parent.left
					topPadding: 4.463
					leftPadding: 8.287
					rightPadding: 8.287
					bottomPadding: 4.463
					text: badgeText
					wrapMode: Label.Wrap
					color: badgeColor
					font.pointSize: Eduport.bsBadgeFontSize
					background: Rectangle {
						color: badgeBackgroundColor
						radius: 6
					}
				}

				Button {
					id: favorite
					display: AbstractButton.IconOnly
					padding: 0
					width: 15
					height: 15
					flat: true
					checkable: true
					icon {
						source: checked
							? "../../Font-Awesome/svgs/solid/heart.svg"
							: "../../Font-Awesome/svgs/regular/heart.svg"
						color: checked
							? "#d6293e"
							: "transparent"
					}
					anchors {
						right: parent.right
						verticalCenter: parent
								.verticalCenter
					}
				}
			}

			Lbl.H5 {
				id: title
				text: titleText
				color: Eduport.bsCardTitleColor
				Layout.fillWidth: true
				Layout.bottomMargin: 8

				MouseArea {
					id: titleArea
					anchors.fill: parent
				}
			}

			Label {
				text: truncatedText
				elide: Text.ElideRight
				maximumLineCount: 2
				visible: truncatedVisible
				wrapMode: Label.Wrap
				Layout.fillWidth: true
				Layout.bottomMargin: 8
			}

			RowLayout {

				Repeater {
					model: 5
					Image {
						source: rating == 0.0 || (index + 1.0) / rating >= 1.25
							? "../../Font-Awesome/svgs/regular/star.svg"
							: (index + 1.0) / rating > 1.0
							? "../../Font-Awesome/svgs/solid/star-half-stroke.svg"
							: "../../Font-Awesome/svgs/solid/star.svg"
						sourceSize {
							width: 15
							height: 13
						}
						ColorOverlay {
							anchors.fill: parent
							source: parent
							color: "#f7c32e"
						}
					}
				}

				Lbl.FwLight {
					text: rating.toFixed(1) + "/5.0"
					Layout.leftMargin: 8
				}
			}
		}

		ColumnLayout {
			id: footer
			anchors {
				left: parent.left
				leftMargin: 16
				right: parent.right
				rightMargin: 16
				bottom: parent.bottom
				bottomMargin: 16
			}

			Rectangle {
				border {
					color: "#229a9ea4"
					width: .5
				}
				height: 1
				Layout.fillWidth: true
				Layout.topMargin: 16
				Layout.bottomMargin: 16
			}

			Item {
				Layout.fillWidth: true

				RowLayout {
					anchors {
						left: parent.left
						verticalCenter: parent
								.verticalCenter
					}

					Image {
						source: "../../Font-Awesome/svgs/regular/clock.svg"
						sourceSize {
							width: 15
							height: 15
						}
						ColorOverlay {
							anchors.fill: parent
							source: parent
							color: "#d6293e"
						}
						Layout.rightMargin: 8
					}

					Lbl.FwLight {
						text: "15h 30m"
					}
				}

				RowLayout {
					anchors {
						right: parent.right
						verticalCenter: parent
								.verticalCenter
					}

					Image {
						source: "../../Font-Awesome/svgs/solid/table.svg"
						sourceSize {
							width: 15
							height: 15
						}
						ColorOverlay {
							anchors.fill: parent
							source: parent
							color: "#fd7e14"
						}
						Layout.rightMargin: 8
					}

					Lbl.FwLight {
						text: "68 lectures"
					}
				}
			}
		}
	}
}

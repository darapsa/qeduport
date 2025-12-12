import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap
import Eduport
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
	property int titleHeading: 5
	property alias titleArea: titleArea
	property string truncatedText: "Far advanced settling say finished raillery. Offered chiefly farther"
	property bool truncatedVisible: true
	property alias ratingStar: ratingStar
	property real rating: 4.0
	property alias footer: footer

	height: rectangle.height + 25.6

	DrpShdw.Box {
		source: rectangle
		anchors.fill: rectangle
	}

	Rectangle {
		id: rectangle
		radius: 8
		color: Eduport.bsCardBg
		height: image.height + body.height
			+ footer.height * footer.visible
		anchors {
			top: parent.top
			topMargin: 25.6
			left: parent.left
			leftMargin: 12.8
			right: parent.right
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
			layer {
				enabled: true
				effect: MultiEffect {
					maskEnabled: true
					maskSource: maskRectangle
				}
			}
			Rectangle {
				id: maskRectangle
				width: image.width
				height: image.height
				radius: 8
				layer.enabled: true
				visible: false
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

			Label {
				id: title
				text: titleText
				wrapMode: Label.Wrap
				Bootstrap.heading: titleHeading
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
				id: ratingStar

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
						layer {
							enabled:true
							effect: MultiEffect {
								brightness: 1.0
								colorization: 1.0
								colorizationColor: "#f7c32e"
							}
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
				height: clock.height + table.height

				RowLayout {
					id: clock
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
						layer {
							enabled:true
							effect: MultiEffect {
								brightness: 1.0
								colorization: 1.0
								colorizationColor: "#d6293e"
							}
						}
						Layout.rightMargin: 8
					}

					Lbl.FwLight {
						text: "15h 30m"
					}
				}

				RowLayout {
					id: table
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
						layer {
							enabled:true
							effect: MultiEffect {
								brightness: 1.0
								colorization: 1.0
								colorizationColor: "#fd7e14"
							}
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

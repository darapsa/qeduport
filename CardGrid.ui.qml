import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

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
	property string titleText: "Build Responsive Websites with HTML"
	property alias titleArea: titleArea
	property string textTruncateText: "Far advanced settling say finished raillery. Offered chiefly farther"
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"

	DropShadow {
		source: rectangle
		color: "#261d3a53"
		radius: 5
		samples: 11
		anchors.fill: rectangle
	}

	Rectangle {
		id: rectangle
		radius: 10
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

				FontLoader {
					id: roboto
					source: doesntEmbed ? "" : "Roboto/Roboto-Regular.ttf"
				}

				Label {
					id: badge
					anchors.left: parent.left
					topPadding: 4.463
					leftPadding: 8.287
					rightPadding: 8.287
					bottomPadding: 4.463
					text: badgeText
					color: badgeColor
					font {
						family: doesntEmbed ? "Roboto" : roboto.name
						pixelSize: 13
					}
					background: Rectangle {
						color: badgeBackgroundColor
						radius: 6
					}
				}

				Image {
					id: favorite
					source: "Font-Awesome/svgs/solid/heart.svg"
					sourceSize {
						width: 15
						height: 15
					}
					anchors {
						right: parent.right
						verticalCenter: parent.verticalCenter
					}
				}
			}

			FontLoader {
				id: heebo
				source: "Heebo/Heebo-Bold.ttf"
			}

			Label {
				id: title
				text: titleText
				color: Qt.rgba(.141, .161, .176, 1.0)
				wrapMode: Text.Wrap
				Layout.fillWidth: true
				Layout.bottomMargin: 8
				font {
					family: heebo.name
					pixelSize: 21
				}

				MouseArea {
					id: titleArea
					anchors.fill: parent
				}
			}

			Label {
				id: textTruncate
				text: textTruncateText
				color: Qt.rgba(.455, .459, .475, 1.0)
				wrapMode: Text.Wrap
				Layout.fillWidth: true
				Layout.bottomMargin: 8
				font {
					family: doesntEmbed ? "Roboto"
						: roboto.name
					pointSize: 14
				}
			}

			RowLayout {
				id: listInline
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

				Label {
					id: duration
					text: "15h 30m"
					anchors {
						top: parent.top
						left: parent.left
						bottom: parent.bottom
					}
				}

				Label {
					id: lectures
					text: "68 lectures"
					anchors {
						top: parent.top
						right: parent.right
						bottom: parent.bottom
					}
				}
			}
		}
	}
}

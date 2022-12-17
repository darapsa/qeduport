import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
	property alias card: card
	contentHeight: card.height

	DetailCardItem {
		id: card
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}
	}
}

import QtQuick 2.15
import QtQuick.Controls 2.15

ScrollView {
	property string cardImageSource

	DetailCardItem {
		anchors.fill: parent
		imageSource: cardImageSource
	}
}

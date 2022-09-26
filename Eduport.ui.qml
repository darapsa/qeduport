import QtQuick 2.15
import QtQuick.Controls 2.15

GridView {
	cellWidth: width < 576 ? parent.width : width < 768 ? parent.width / 2
			: width < 992 ? parent.width / 3 : parent.width / 4
	cellHeight: cellWidth * 1.6
	ScrollBar.vertical: ScrollBar {}
}

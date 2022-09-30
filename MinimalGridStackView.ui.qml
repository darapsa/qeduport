import QtQuick 2.15
import QtQuick.Controls 2.15

StackView {
	property alias grid: grid

	id: stack
	initialItem: GridView {
		id: grid
		cellWidth: width < 576 ? stack.width : width < 768
			? stack.width / 2 : width < 992 ? stack.width / 3
			: stack.width / 4
		cellHeight: cellWidth * 1.3
		ScrollBar.vertical: ScrollBar {}
	}
}

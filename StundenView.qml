import QtQuick 2.0

GridView {
    property int vstundenId : 0

    model: StundenModel {
                stundenId :  vstundenId

    }

    delegate: Column {
          Image { source: "images/arrow.png"; anchors.horizontalCenter: parent.horizontalCenter }
          Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    }


}

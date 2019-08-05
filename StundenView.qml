import QtQuick 2.7
import QtQuick.Controls 2.1

Flickable {
    property int vstundenId : 0

    //anchors.fill: parent
    width:500
    height:300
    contentWidth: 1500
    contentHeight: 900

    /*
    Text {
        text: "Hello Word"
        x: 50
        y: 50
    }
    */

    Repeater {
        model: StundenModel {
                    stundenId :  vstundenId
                }



        Rectangle {
            x: xK
            y: yK
            width: 80
            height: 50
            color: "gray"
          /*Image { source: "images/arrow.png"; anchors.horizontalCenter: parent.horizontalCenter }
          Text { text: name; anchors.horizontalCenter: parent.horizontalCenter}
          */
          Text {
          text: Vorname + "\n" + Nachname
          //width: parent.width
          }

          /*
          onClicked: {
              stackGridView.currentIndex = index
              stundenView.vstundenId = stundenView.currentIndex
              backButton.visible=true
              //stackView.push({ item : StundenView.createObject(), properties:{vstundenId:sid}})
              stackView.push(cameraView)
              }

           }
           */
        }
    }
}

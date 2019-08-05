import QtQuick 2.0
import QtMultimedia 5.8


Rectangle {
    //width: 200; height: 100
    color: "green"


    Camera {
        id: camera

        imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

        exposure {
            exposureCompensation: -1.0
            exposureMode: Camera.ExposurePortrait
        }

        flash.mode: Camera.FlashRedEyeReduction

        imageCapture {
            onImageCaptured: {
                photoPreview.source = preview  // Show the preview in an Image
            }
        }
    }

    VideoOutput {
        source: camera
        anchors.fill: parent
        focus : visible // to receive focus and capture key events when visible



    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
        backButton.visible=true
        //stackView.push({ item : StundenView.createObject(), properties:{vstundenId:sid}})
        stackView.pop()
        }
    }//MouseArea
    /*
    Image {
        id: photoPreview
    }
    */

}//Item

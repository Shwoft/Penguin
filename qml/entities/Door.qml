import QtQuick 2.0
import Felgo 3.0

PenguinEntityBaseDraggable {
    id: door
    entityType: "door"

    Image {
        id: doorGoal
        source: "../../assets/halloween/exit.png"
        width: 358
        height: 240
    }

    BoxCollider {
        anchors.fill: doorGoal
        bodyType: Body.Static
        // Category5: solids
        categories: Box.Category5
        fixture.onBeginContact: {
            var otherEntity = other.getBody().target
            if(otherEntity.entityType === "penguin") {
                penguin.contacts++
                if(penguin.verticalVelocity >= 0)
                    penguin.doubleJumpEnabled = true
            }

        }
        fixture.onEndContact: {
            var otherEntity = other.getBody().target
            if(otherEntity.entityType === "penguin") penguin.contacts--

        }

    }
}

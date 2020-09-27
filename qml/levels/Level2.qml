import Felgo 3.0
import QtQuick 2.12
import "../entities"
import "." as Levels

Levels.LevelBase {
    id: level
    // we need to specify the width to get correct debug draw for our physics
    // the PhysicsWorld component fills it's parent by default, which is the viewPort Item of the gameScene and this item uses the size of the level
    // NOTE: thy physics will also work without defining the width here, so no worries, you can ignore it untill you want to do some physics debugging
    width: 42 * gameScene.gridSize

    GroundInside {
        row: -2
        column: 0
        size: 31
    }

    GroundInside {
        row: -2
        column: 1
        size: 15
    }

    Ground{
        row: -2
        column: 2
        size: 10
    }

    Wood {
        row: 3
        column: 3.5
        size: 1
    }

    CoinGround {
        row: 3.3
        column: 4
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 3.8
        column: 4
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 4.3
        column: 4
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 4.8
        column: 4
        startX: row*64
        startY: level.height-(column+1)*64
    }

    GroundInside {
        row: 8
        column: 2
        size: 5
    }

    Ground {
        row: 8
        column: 3
        size: 1
    }

    GroundInside {
        row: 9
        column: 3
        size: 4
    }

    Pumpkin {
        row: 9
        column: 4
        diepumpkin.visible: false
    }

    Ground {
        row: 9
        column: 4
        size: 1
    }

    GroundInside {
        row: 10
        column: 4
        size: 3
    }

    Ground {
        row: 10
        column: 5
        size: 1
    }

    GroundInside {
        row: 11
        column: 5
        size: 2
    }

    Ground {
        row: 11
        column: 6
        size: 2
    }

    Fatbat {
        row: 11.5
        column: 7
        dieFatbat.visible: false
    }

    Wood {
        row: 14.5
        column: 5.5
        size: 1
    }

    Wood {
        row: 18
        column: 4
        size: 1
    }

    CoinGround {
        row: 15
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 15.5
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 16
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 18.5
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 19
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 19.5
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Spikes {
        row: 13
        column: 0.5
        size: 18
    }

    GroundInside {
        row: 22
        column: 1
        size: 7
    }

    Ground {
        row: 22
        column: 2
        size: 7
    }

    Pumpkin {
        row: 28
        column: 2.5
        diepumpkin.visible: false
    }

    Fire {
        row: 25
        column: 2.5
        dieFire.visible: false
    }

    Brick {
        row: 24
        column: 3.8
    }

    Block {
        id: first_block
        row: 24.5
        column: 3.8
    }

    SnowBall{
        id: snowball
        row: 24.5
        column: 4
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Brick {
        row: 25
        column: 3.8
    }

    Block {
        id: block1
        row: 25.5
        column: 3.8
    }

    Coin {
        id: coin1
        row: 25.6
        column: 4.2
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Brick {
        row: 26
        column: 3.8
    }

    Ground {
        row: 29
        column: 0
        size: 24
    }

    Ground {
        row: 30
        column: 4
        size: 1
    }

    CoinGround {
        row: 30.3
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Ground {
        row: 33
        column: 5
        size: 1
    }

    CoinGround {
        row: 33.3
        column: 5.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Ground {
        row: 38
        column: 4
        size: 1
    }

    CoinGround {
        row: 38.3
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Ground {
        row: 42
        column: 3.5
        size: 4
    }

    Pumpkin {
        row: 44
        column: 4
        diepumpkin.visible: false
    }

    Pumpkin {
        row: 42
        column: 0.5
        diepumpkin.visible: false
    }

    Fire {
        row: 38
        column: 0.5
        dieFire.visible: false
    }

    Pumpkin {
        row: 30
        column: 0.5
        diepumpkin.visible: false
    }

    Fire {
        row: 32
        column: 0.5
        dieFire.visible: false
    }

    Pumpkin {
        row: 35.7
        column: 0.5
        diepumpkin.visible: false
    }

    Tree {
        row: 34
        column: 3.5
        size: 1
    }

    CoinGround {
        row: 42.5
        column: 5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 43
        column: 5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 43.5
        column: 5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 44
        column: 5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 44.5
        column: 5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Ground {
        row: 48
        column: 4.5
        size: 2
    }

    GroundInside {
        row: 53
        column: 0
        size: 24
    }

    GroundInside {
        row: 53
        column: 1
        size: 24
    }

    GroundInside {
        row: 53
        column: 2
        size: 10
    }

    GroundInside {
        row: 53
        column: 3
        size: 10
    }

    GroundInside {
        row: 53
        column: 4
        size: 10
    }

    Ground {
        row: 53
        column: 5
        size: 10
    }

    CoinGround {
        row: 55
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 55
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 55.7
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 55.7
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 56.4
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 56.4
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 57.1
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 57.1
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 57.8
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 57.8
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 58.5
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 58.5
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 59.2
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        row: 59.2
        column: 6.7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Ground {
        row: 63
        column: 2
        size: 14
    }

    Door {
        row: 70
        column: 5.7
    }
}

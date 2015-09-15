//
//  AnimalsLoader.swift
//  imaginaryAnimalsLister
//
//  Created by Leo Yu on 9/14/15.
//  Copyright © 2015 Yu, Leo. All rights reserved.
//

import Foundation

struct AnimalsLoader
{
    func loadAnimals() -> [ImaginaryAnimal]
    {
        let mermaid = ImaginaryAnimal(name: "Mermaid", height: 1.5,  location: "Oceans", dateLastSeen: "1858",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2a/Waterhouse_a_mermaid.jpg"));
        
        let lochness = ImaginaryAnimal(name: "Loch Ness Monster", height: 85,  location: "Scotland", dateLastSeen: "1951",
            imageURL: NSURL(string: "https://s3.amazonaws.com/glowscript/textures/flower_texture.jpg"));
        
        let bigfoot = ImaginaryAnimal(name: "Bigfoot", height: 5.8,  location: "North America", dateLastSeen: "1963",
            imageURL: NSURL(string: "https://s3.amazonaws.com/glowscript/textures/earth_texture.jpg"));
        
        let ogopogo = ImaginaryAnimal(name: "Ogopogo", height: 3.2,  location: "Oceans", dateLastSeen: "1987",
            imageURL: NSURL(string: "https://s3.amazonaws.com/glowscript/textures/rug_texture.jpg"));
        
        return [mermaid, lochness, bigfoot, ogopogo];
        
    }
}

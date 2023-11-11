//
//  SettingsStoryboard.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//

import Swinject
import SwinjectStoryboard

class SettingsStoryboard: Storyboard {
    
    private let container: Container
    private let assembly: Assembly
    private let storyboard: SwinjectStoryboard
    
    init(sharedContainer: Container, assembly: Assembly) {
        self.assembly = assembly
        container = Container(parent: sharedContainer)
        assembly.assemble(container: container)
        storyboard = SwinjectStoryboard.create(name: "Settings", bundle: nil, container: container)
    }
    
    func initial<T>() -> T? where T: UIViewController {
        return storyboard.instantiateInitialViewController() as? T
    }
    
    func viewController<T>(identifier: StoryboardId) -> T? where T: UIViewController {
        return storyboard.instantiateViewController(withIdentifier: identifier.identifier) as? T
    }
}

//
//  AnimalListRepository.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListRepository {

    private static let animal1 = Animal(id: 1, name: "Тигр", shortDescription: "Panthera tigris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", placeholderColor: UIColor.lightGray)
    private static let animal2 = Animal(id: 2, name: "Серый волк", shortDescription: "Canis lupus", description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", placeholderColor: UIColor.yellow)
    private static let animal3 = Animal(id: 3, name: "Пума", shortDescription: "Puma concolor", description: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ", placeholderColor: UIColor.cyan)
    private static let animal4 = Animal(id: 4, name: "Койот", shortDescription: "Canis latrans", description: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.", placeholderColor: UIColor.white)
    private static let animal5 = Animal(id: 5, name: "Рысь", shortDescription: "Lynx", description: "Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.", placeholderColor: UIColor.green)
    private static let animal6 = Animal(id: 6, name: "Собака", shortDescription: "Canis lupus familiaris", description: "Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.", placeholderColor: UIColor.gray)
    private static let animal7 = Animal(id: 7, name: "Пантера", shortDescription: "Panther", description: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.", placeholderColor: UIColor.magenta)
    private static let animal8 = Animal(id: 8, name: "Леопард", shortDescription: "Leopard", description: "These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.", placeholderColor: UIColor.lightGray)
    private static let animal9 = Animal(id: 9, name: "Королевский Тигр", shortDescription: "King Tiger", description: "In certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.", placeholderColor: UIColor.orange)
    
    private static let animalList: [Animal] = [animal1, animal2, animal3, animal4, animal5, animal6, animal7, animal8, animal9]
    
    func getAnimalList() -> [Animal] {
        return AnimalListRepository.animalList
    }
    
    func getAnimalWithId(_ id: Int) -> Animal {
        return AnimalListRepository.animalList[id - 1]
    }
}

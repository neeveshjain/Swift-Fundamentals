import Foundation
import SwiftUI


/// This is the DataItemModel which define our basic data structure and its properties.
struct DataItemModel:Identifiable{
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}

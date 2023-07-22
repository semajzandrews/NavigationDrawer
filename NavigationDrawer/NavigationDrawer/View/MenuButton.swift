//
//  MenuButton.swift
//  NavigationDrawer
//
//  Created by Semaj Andrews on 7/22/23.
//

import SwiftUI

struct MenuButton: View {
    var name: String
    var image: String
    
    @Binding var selectedMenu: String
    
    var body: some View {
        
        Button(action: {}, label: {
            
            HStack(spacing: 15){
                
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
                Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
            }
            .padding(.vertical, 12)
            .frame(width: 200)
            .background(Color.white.opacity(selectedMenu == name ? 1 : 0))
            
        })
        
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

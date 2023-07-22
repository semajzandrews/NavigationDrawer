//
//  Drawer.swift
//  NavigationDrawer
//
//  Created by Semaj Andrews on 7/20/23.
//

import SwiftUI

struct Drawer: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    @Namespace var animation
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Spacer()
                
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10, content: {
                
                Text("Hello")
                    .font(.title2)
                
                Text("Jenna Ezarik")
                    .font(.title)
                    .fontWeight(.heavy)
                
                
                
            })
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 5)
            
            Group {
                
                MenuButton(name: "Catalogue", image: "envelope", selectedMenu: $menuData.selectedMenu, animation: animation)
                
                MenuButton(name: "Your Cart", image: "envelope", selectedMenu: $menuData.selectedMenu, animation: animation)
                
                MenuButton(name: "Favorites", image: "envelope", selectedMenu: $menuData.selectedMenu, animation: animation)
                
                MenuButton(name: "Your Orders", image: "envelope", selectedMenu: $menuData.selectedMenu, animation: animation)
                
            }
            .padding(.leading)
            .frame(width: 250, alignment: .leading)
            .padding(.top, 20)
            
            Spacer()
        }
        .frame(width: 250)
        .background(
            Color("drawerBG")
                .ignoresSafeArea(.all, edges: .vertical)
        )
        
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

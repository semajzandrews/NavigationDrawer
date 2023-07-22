//
//  Home.swift
//  NavigationDrawer
//
//  Created by Semaj Andrews on 7/20/23.
//

import SwiftUI

struct Home: View {
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @StateObject var menuData = MenuViewModel()
    
    var body: some View {
        
        HStack(spacing: 0){
            Drawer()
    
            TabView {
                
                Text("Home")
                
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(width: UIScreen.main.bounds.width)
        
        // MOVING VIEW
        .offset(x: 125)
        
        .environmentObject(menuData)
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
//            .previewInterfaceOrientation(.landscapeLeft)
    }
}

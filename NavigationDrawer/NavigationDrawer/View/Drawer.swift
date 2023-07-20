//
//  Drawer.swift
//  NavigationDrawer
//
//  Created by Semaj Andrews on 7/20/23.
//

import SwiftUI

struct Drawer: View {
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

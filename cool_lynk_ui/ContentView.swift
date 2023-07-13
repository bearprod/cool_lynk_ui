//
//  ContentView.swift
//  cool_lynk_ui
//
//  Created by Alex Bearducci on 7/12/23.
//

import SwiftUI
import SwiftUIIntrospect

struct ContentView: View {
    
    @State private var show_activity = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
            
                
                HStack{
                    Button(action: {
                        show_activity.toggle()
                    }) {
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 34))
                    }
                    .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    Button(action: {
                        print("ggg")
                    }) {
                        
                        
                        HStack(spacing: 3.0){
                            
                            Text("5")
                                .font(.system(size: 40, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                            
                            Image(systemName: "bolt.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.yellow)
                            
                        }
                    }
                    .padding(.horizontal, 10)
                    
                }
                .frame(width: geometry.size.width)
                
                Spacer()
                
                ZStack{
                    post_view()
                    
                }
                
                
                Spacer()
                
            }
            //.frame(width: geometry.size.width, height: geometry.size.height)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("mydark"))
            .sheet(isPresented: $show_activity){
                activity_view()
                    .introspect(.sheet, on: .iOS(.v13, .v14, .v15, .v16, .v17)) { sheet in
                                            //sheet.backgroundColor = UIColor.red
                        sheet.presentedViewController.view.backgroundColor = UIColor.red
                                                            }
            }
            .ignoresSafeArea()
            .introspect(.viewController, on: .iOS(.v13, .v14, .v15, .v16, .v17)) { view_cont in
                view_cont.modalPresentationStyle = .fullScreen
                print(view_cont)
                            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

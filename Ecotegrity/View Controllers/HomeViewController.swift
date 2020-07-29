//
//  HomeViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 16/07/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews : PreviewProvider {
    
     static var previews: some View {
        
        ContentView()
}
}

struct Home : View {
    @State var x : CGFloat = 0
    @State var count : CGFloat = 0
    
    @State var op : CGFloat = 0
    @State var data = [
       
             
        Card (id: 0 , img: "homepageimg1", name: "Oceanconservancy.org", show: false ),
        Card (id: 1 , img: "homepageimg2", name: "TheOceanCleanUp.com", show : false ),
        Card (id: 2 , img: "homepageimg3", name: "www.biologicaldiversity.org", show: false )
                ]
          
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack (spacing : 15) {
                ForEach(data) { i in
                    CardView(data: i)
                        .offset(x: self.x)
                    .highPriorityGesture(DragGesture()
                    
                    .onChanged ( { (value) in
                            if value.translation.width > 0{
                            
                            self.x = value.location.x
                            }
                            else{
                                
                                self.x = value.location.x - self.screen
                            }})
                            .onEnded ({(value) in
                                if value.translation.width > 0{
                                                                   
                                                                   
                                    if value.translation.width > ((self.screen - 80) / 2) && Int(self.count) != 0{
                                                                       
                                                                       
                                                                       self.count -= 1
                                                                       self.updateHeight(value: Int(self.count))
                                        self.x = -((self.screen + 15) * self.count)
                                                                   }
                                                                   else{
                                                                       
                                        self.x = -((self.screen + 15) * self.count)
                                                                   }
                                                               }
                                                               else{
                                                                   
                                                                   
                                    if -value.translation.width > ((self.screen - 80) / 2) && Int(self.count) !=  (self.data.count - 1){
                                                                       
                                                                       self.count += 1
                                                                       self.updateHeight(value: Int(self.count))
                                        self.x = -((self.screen + 15) * self.count)
                                                                   }
                                                                   else{
                                                                       
                                                                       self.x = -((self.screen + 15) * self.count)
                                                                   }
                                }
                            })
                       )
                    }
                   
                }
                .frame(width: UIScreen.main.bounds.width)
                .offset(x: self.op)
                Spacer()
            }
            .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Carousel List")
            .animation(.spring())
            .onAppear {
                
                self.op = ((self.screen + 15) * CGFloat(self.data.count / 2)) - (self.data.count % 2 == 0 ? ((self.screen+ 15) / 2) : 0)
                
                self.data[0].show = true
            }
        }
    }
    func updateHeight(value : Int){
        
        
        for i in 0..<data.count{
            
            data[i].show = false
        }
        
        data[value].show = true
    }
}

struct CardView : View {
    var data : Card
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(data.img)
            .resizable()
                
            Text(data.name)
                .fontWeight(.bold)
                .padding(.vertical,13)
                .padding(.leading)
        
        } .frame(width: UIScreen.main.bounds.width, height: data.show ? 500 : 440)
        .background(Color.white)
        .cornerRadius(25)
}
}

struct Card : Identifiable {
    var id : Int
    var img : String
    var name : String
    var show : Bool
}


/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/

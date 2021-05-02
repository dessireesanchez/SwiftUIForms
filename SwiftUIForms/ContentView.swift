//
//  ContentView.swift
//  SwiftUIForms
//
//  Created by Dessiree Sánchez on 5/2/21.
//

import SwiftUI

struct ContentView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var password = ""
    @State var passwordAgain = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    
                    Section(footer: Text("Your password must be at least 8 characters long.")) {
                        SecureField("Create Password", text: $password)
                        SecureField("Confirm Password", text: $passwordAgain)
                    }
                
                    Section {
                        Button(action: {
                            
                        }, label: {
                            Text("Continue")
                                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        })
                    }
                }
            }
            .navigationTitle("Create Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

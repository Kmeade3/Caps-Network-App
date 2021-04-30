//
//  ContentView.swift
//  login screen
//
//  Created by Nayyir M. Ahmed on 4/28/21.
//

import SwiftUI

let lightGray = Color(red: 239/255,green: 243/255,blue:244/255)

let storedUsername = "CapsNetworkUser"
let storedPassword = "caps123"

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                CapsLogo()
                HelloText()
                UsernameTextField(username: $username)
                PasswordTextField(password: $password)
                if authenticationDidFail{
                    Text("Incorrect username or password. Please Try Again")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    if self.username == storedUsername && self.password == storedPassword{
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                    }
                    else{
                        self.authenticationDidFail = true
                    }
                }, label: {
                    LoginButtonContent()
                })
                
                
                Button(action: {print("Button")}){
                }
        }
            if authenticationDidSucceed{
                Text("Login Succeeded")
                    .padding(.top,20)
                    .font(.headline)
                    .frame(width: 250, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .animation(Animation.default)
                    .padding(.bottom,20)
                
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HelloText: View {
    var body: some View {
        Text("Welcome Back!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
    }
}

struct CapsLogo: View {
    var body: some View {
        Image("capsLogo")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 181, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
            
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35)
    }
}
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Email Address or Username", text: $username)
            .padding()
            .background(lightGray)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

struct PasswordTextField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGray)
            .cornerRadius(5)
            .padding(.bottom,20)
    }
}

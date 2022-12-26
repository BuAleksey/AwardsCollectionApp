//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(awardIsShowing ? 2 : 1)
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
            }
            
            Spacer()
            
            if awardIsShowing {
                VStack {
                    NewYearTreeView()
                        .frame(width: 250, height: 250)
                    
                    Text("С наступающим, Алексей ✨")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                }
                .transition(.bottomScaleMove)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var bottomScaleMove: AnyTransition {
        let insertion = AnyTransition.move(edge: .bottom)
            .combined(with: .scale(scale: 20, anchor: UnitPoint.bottomLeading))
            .animation(.spring(dampingFraction: 1))
        let removal = AnyTransition.opacity
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

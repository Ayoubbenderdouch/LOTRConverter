//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Ayoub Benderdouch on 17/09/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
//    @State var topCurrency = Currency.silverPenny
//    @Binding var bottomCurrency: Currency = .goldPenny

    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                //Currency icons
                IconGrid(currency: $topCurrency)
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //Currency icons
                IconGrid(currency: $bottomCurrency)
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}

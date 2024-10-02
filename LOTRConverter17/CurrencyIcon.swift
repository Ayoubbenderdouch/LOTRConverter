//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Jojo on 17/09/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    let currenyImage: ImageResource
    let currencyName: String
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currenyImage)
                .resizable()
                .scaledToFit()
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currenyImage: .goldpiece, currencyName: "Gold Piece")
}

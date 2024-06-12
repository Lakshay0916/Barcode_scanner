//
//  ContentView.swift
//  BarCode
//
//  Created by Lakshay Singhal on 23/03/24.
//

import SwiftUI



struct BarCodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedcode: $scannedCode )
                    .frame(maxWidth:.infinity,maxHeight:300)
                Spacer().frame(height: 60)
                
                
                
                Label("Scanned Image",systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty ? "Not Yet Scanned": scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ?.red: .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            
            
          
        }
        
    
    }
}

#Preview {
    BarCodeScannerView()
}

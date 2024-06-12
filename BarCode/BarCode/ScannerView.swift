//
//  ScannerView.swift
//  BarCode
//
//  Created by Lakshay Singhal on 27/03/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedcode : String
    func makeCoordinator() -> Coordinator {
        Coordinator() 
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
        
    }
    
    
    
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView (scannedcode: .constant("123456"))
        
        
    }}

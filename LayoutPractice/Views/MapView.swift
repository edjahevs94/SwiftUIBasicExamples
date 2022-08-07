//
//  MapView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate =
        CLLocationCoordinate2D(latitude: 40.13, longitude: -8.20)
        
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
